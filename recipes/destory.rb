require 'chef/provisioning'
require 'chef/provisioning/vsphere_driver'

with_vsphere_driver host: '172.16.20.2',
  insecure: true,
  user:     'administrator@vsphere.local',
  password: 'PASSWORD'

with_machine_options :bootstrap_options => {
                       use_linked_clone: true,

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

machine "testing-windows" do
  action :destroy
end
