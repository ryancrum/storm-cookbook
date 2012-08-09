Description
===========

Installs storm (http://storm-project.net).

Requirements
============

Java 6, zeromq 2.1.7, jzmq

Attributes
==========

All attributes are in the `storm` namespace.

### Required:

* `node[:storm][:zookeeper_servers]` - list of zookeeper servers
* `node[:storm][:nimbus_host]` - nimbus server

### Optional:

* `node[:storm][:src_version]` - storm version to install - defaults to 0.8.0
* `node[:storm][:install_dir]` - where to install storm - defaults to /opt/storm
* `node[:storm][:src_mirror]` - full URL to download storm
* `node[:storm][:java_lib_path]` - path to zeromq/jzmq native libraries
* `node[:storm][:supervisor_ports]` - list of port numbers for worker nodes

Recipes
=======

default
-------

Downloads storm and installs it.

License and Author
==================

Author:: Ryan Crum <ryan@ryancrum.org>

Copyright 2012, Ryan Crum

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

