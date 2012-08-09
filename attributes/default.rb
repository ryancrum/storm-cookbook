#
# Author: Ryan Crum <ryan@ryancrum.org>
# Cookbook Name:: storm
# Attributes:: storm
#
# Copyright 2012 Ryan Crum
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default[:storm][:src_version] = "0.8.0"
default[:storm][:install_dir] = "/opt/storm"
default[:storm][:src_mirror] = "https://github.com/downloads/nathanmarz/storm/storm-#{storm[:src_version]}.zip"
default[:storm][:zookeeper_servers] = []
default[:storm][:nimbus_host] = "localhost"
default[:storm][:java_lib_path] = nil
default[:storm][:supervisor_ports] = nil
