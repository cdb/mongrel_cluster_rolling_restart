Gem::Specification.new do |s|
  s.name     = "MongrelClusterRollingRestart"
  s.version  = "0.1.0"
  s.date     = "2008-09-24"

  s.summary     = "Allows for a mongrel cluster to be restarted in a rolling fashion"
  s.description = "Mongrel Cluster Rolling Restart allows for a mongrel cluster to be restarted in a rolling fashion, one mongrel at a time"
  
  s.authors  = ["Cameron Booth"]
  s.email    = "cameron@cdbdesign.net"
  s.homepage = "http://github.com/cdb/mongrel_cluster_rolling_restart"

  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/mongrel_cluster_rolling_restart", "lib/mongrel_cluster_rolling_restart.rb", "test/test_mongrel_cluster_rolling_restart.rb"]
  s.test_files = ["test/test_mongrel_cluster_rolling_restart.rb"]

  s.rdoc_options = ["--main", "README.txt"]
  s.has_rdoc = true
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  
  s.require_paths = ["lib"]


  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.add_dependency("mongrel", ["> 1.1.4"])
  s.add_dependency("mongrel_cluster", ["> 1.0.5"])

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
