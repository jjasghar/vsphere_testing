# vsphere_cookbook

This is my demo cookbook for testing `chef-provisioning-vsphere`.

- `default` - installs either notepad plus plus OR vim
- `provision` - uses chef-provisioning-vsphere to provision a linux and windows machine
- `destroy` - uses chef-provisioning-vsphere to destroy the linux and windows machine
- `.kitchen.yml` - an example kitchen file to show how to use the vsphere driver

## Setup

If have come across this, you are probably trying to figure out how to use Kitchen and vSphere.

I'll be the first to say, yes this is hard, but when it works, it's amazing. You have to figure
out the correct incantation with your vSphere cluster. These examples are a good way to bootstrap
your configurations.

First thing first, look through this code. It was configured for my Development vSphere instance,
so there will be differances. Especially the following:

### .kitchen.yml

- `host` - The vCenter instance you need connect to
- `user` - The username to connect as
- `password` - The password for the above
- `datacenter` - the Datacenter you have rights to
- `template_name` - The template name that you want to clone
- `template_folder` - **If** your template is located inside a folder, otherwise omit this
- `resource_pool` - Defaults to `Cluster` otherwise put the correct resource pool in
- `ssh:` - This section will require the same as the `transport` layer below
- `ssh: port` - It seems it defaults to 22, but if you give it the WinRM port, 5985 it "just works" with WinRM

### default.rb

You shouldn't have to mess with this at all. On a Windows machine, it'll install Notepad++ otherwise install/confirm that `vim` is installed.

### destroy.rb

- `host:` - The vCenter instance you need connect to
- `user:` - The username to connect as
- `password:` - The password for the above
- `datacenter:` - the Datacenter you have rights to
- `template_name:` - The template name that you want to clone
- `template_folder:` - **If** your template is located inside a folder, otherwise omit this
- `resource_pool:` - Defaults to `Cluster` otherwise put the correct resource pool in
- `ssh:` - This section will require the changes to talk to the machines
- `:sudo` - If your instance (like Ubuntu) requires `sudo` rights to install Chef

### provision.rb

- `host:` - The vCenter instance you need connect to
- `user:` - The username to connect as
- `password:` - The password for the above
- `datacenter:` - the Datacenter you have rights to
- `template_name:` - The template name that you want to clone
- `template_folder:` - **If** your template is located inside a folder, otherwise omit this
- `resource_pool:` - Defaults to `Cluster` otherwise put the correct resource pool in
- `ssh:` - This section will require the changes to talk to the machines
- `:sudo` - If your instance (like Ubuntu) requires `sudo` rights to install Chef, removed for the Windows bootstrap.
