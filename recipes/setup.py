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
   content 'This systems is designed for testing'
   action :create
   owner 'root'
   group 'root'
end 
