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
  tag "haha"
end

with_machine_options :bootstrap_options => {
                       use_linked_clone: true,
                       num_cpus: 2,
                       memory_mb: 4096,
                       datacenter: 'Datacenter',
                       resource_pool: 'Cluster',
                       template_folder: 'Windows',
                       template_name: 'windows2012r2',
                       :ssh => {
                         :user => 'Administrtor',
                         :password => 'Admini@',
                         :paranoid => false,
                         :port => "5985"
                       }
                     },
                     ready_timeout: '30'

machine "testing-windows" do
  tag "haha"
end
