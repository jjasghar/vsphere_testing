require 'chef/provisioning'
require 'chef/provisioning/vsphere_driver'

with_vsphere_driver host: '10.0.0.102',
  insecure: true,
  user:     'administrator@vsphere.local',
  password: 'PASSWORD'

#with_machine_options :bootstrap_options => {
#                               num_cpus: 2,
#                               memory_mb: 4096,
#                               datacenter: 'Datacenter',
#                               resource_pool: 'Cluster',
#                               template_folder: 'Linux',
#                               template_name: 'ubuntu16-template',
#                               :ssh => {
#                                 :user => 'admini',
#                                 :password => 'admini',
#                                 :paranoid => false,
#                               }
#                             },
#                :sudo => true

#machine "testing-ubuntu" do
#  tag "haha"
#end
