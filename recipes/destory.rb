require 'chef/provisioning'
require 'chef/provisioning/vsphere_driver'

with_vsphere_driver host: '172.16.20.2',
  insecure: true,
  user:     'administrator@vsphere.local',
  password: 'PASSWORD'

with_machine_options :bootstrap_options => {
                               num_cpus: 2,
                               memory_mb: 4096,
                               datacenter: 'Datacenter',
                               resource_pool: 'Cluster',
                               template_folder: 'Linux',
                               template_name: 'ubuntu16-template',
                               :ssh => {
                                 :user => 'admini',
                                 :password => 'admini',
                                 :paranoid => false,
                               }
                             },
                :sudo => true

machine "testing-ubuntu" do
  action :destroy
end

# win_bootstrap_options = { :bootstrap_options => {
#                             num_cpus: 2,
#                             memory_mb: 8096,
#                             datacenter: 'Datacenter',
#                             resource_pool: 'Cluster',
#                             template_folder: 'Windows',
#                             template_name: 'windows2012R2',
#                             :ssh => {
#                               :user => 'Administrator',
#                               :password => 'Admini@',
#                               :paranoid => false,
#                               :port => "5985"
#                             }
#                           },
#                           ssh_options: { :keepalive => true, :keepalive_interval => 50, :user_known_hosts_file => '/dev/null' },
#                           ready_timeout: '30'
#                         }
# 
#  with_chef_server "https://api.chef.io/organizations/ORG",
#                        :client_name => Chef::Config[:node_name],
#                        :signing_key_filename => Chef::Config[:client_key]
# 
#  machine "testing-windows" do
#    machine_options win_bootstrap_options
#    action :destroy
#    tag "haha"
# end
