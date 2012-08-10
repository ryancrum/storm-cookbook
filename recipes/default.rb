#
# Author: Ryan Crum <ryan@ryancrum.org>
# Cookbook Name:: storm
# Recipe:: default
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

include_recipe "zeromq"
include_recipe "java"
include_recipe "jzmq"

storm_zip = File.join(Chef::Config[:file_cache_path], "/", "storm-#{node[:storm][:src_version]}.zip")

remote_file storm_zip do
  source node[:storm][:src_mirror]
end

package "unzip"

bash "install storm #{node[:storm][:src_version]}" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    unzip #{storm_zip}
    rm -rf #{node[:storm][:install_dir]}
    mv storm-#{node[:storm][:src_version]} #{node[:storm][:install_dir]}
  EOH
end

template "#{node[:storm][:install_dir]}/conf/storm.yaml" do
  source "storm.yaml.erb"

  variables({
    :zookeeper_servers => node[:storm][:zookeeper_servers],
    :nimbus_host => node[:storm][:nimbus_host],
    :java_lib_path => node[:storm][:java_lib_path],
    :supervisor_ports => node[:storm][:supervisor_ports]
  })
end
