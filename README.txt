= MongrelClusterRollingRestart

by Cameron D Booth

== DESCRIPTION:

This is intended to let you restart a cluster of mongrels in a rolling fashion so that you don't have to take down a site with a maintenance page in order to release a simple fix. If you have a migration to run, or any other reason that you might not want people accessing your site to get different versions for a short period, then you don't want to be running a rolling restart. But for those times when you just want to deploy a super quick bug fix, hopefully this will be useful.

== FEATURES/PROBLEMS:

* This is super alpha, untested and only barely used at this stage. I'm just learning how to create a gem right now.

== SYNOPSIS:

  TODO

== REQUIREMENTS:

* mongrel and mongrel_cluster gems

== INSTALL:

* sudo gem install cdb-mongrel_cluster_rolling_restart

== LICENSE:

(The MIT License)

Copyright (c) 2008 Cameron D Booth

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
