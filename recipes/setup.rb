#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'ntp' do
   action :install
end

service 'ntpd' do
   action [:enable, :start]
end

package 'tree' do
   action :install
end

package 'git' do
   action :install
end

template '/etc/motd' do
   source "motd.erb"
   action :create
   owner 'root'
   group 'root'
end 
