name 'vsphere_testing'
maintainer 'JJ Asghar'
maintainer_email 'jj@chef.io'
license 'Apache 2.0'
description 'Tests vsphere'
long_description 'Tests vsphere because vsphere and sigh vsphere.'
version '1.0.0'


%w(ubuntu debian windows).each do |os|
  supports os
end
