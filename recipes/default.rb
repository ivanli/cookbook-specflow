#
# Cookbook Name:: specflow
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_zipfile node['specflow']['out_folder'] do
  source node['specflow']['zip_path']
  action :unzip
  not_if { ::Dir.exists? node['specflow']['out_folder'] }
end

windows_path File.join(node['specflow']['out_folder'], 'tools').gsub('/', '\\') do
  action :add
end