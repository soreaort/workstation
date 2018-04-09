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

file '/etc/motd' do
   content "This systems is designed for testing
   HOSTNAME:   #{node['hostname']}
   IPADDRESS:  #{node['ipaddress']}
   MEMORY:     #{node['memory']['total']}
   CPU:        #{node['cpu']['0']['mhz']}
"
   action :create
   owner 'root'
   group 'root'
end 
