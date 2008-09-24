require 'mongrel_cluster'

module Cluster
  class RollingRestart < GemPlugin::Plugin "/commands"
    include ExecBase

    def configure 
      options [ 
        ['-C', '--config PATH', "Path to cluster configuration file", :@config_file, "config/mongrel_cluster.yml"],
        ['-f', '--force', "Force the shutdown.", :@force, false],
        ['-v', '--verbose', "Print all called commands and output.", :@verbose, false],
        ['', '--clean', "Call stop and start with --clean", :@clean, false],        
        ['', '--only PORT', "Port number of cluster member", :@only, nil]       
      ]
    end
  
    def run
      read_options
      log "Rolling restart on ports #{@ports.join(', ')}"

      @force, @clean = [false, true]
    
      @ports.each do |port|
        @only = port
        stop
        check_wait(@options["kill_time"] || 5)
        start
        if @options["startup_time"]
          log "Allowing #{@options["startup_time"]} seconds for mongrel process to boot"
          sleep @options["startup_time"]
        end
      end
    end
  
    private
      def check_wait(wait_time)
        wait_time.times do
          return unless check_process(@only)
          sleep 1
        end
        log " * Slept #{wait_time} seconds, but still not dead, force killing in 10 more."
        sleep 10
        @force = true
        stop
        @force = false
      end
  
  end
end

