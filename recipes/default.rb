# frozen_string_literal: true

if platform?('windows')
  windows_package "npp" do
    #source "https://notepad-plus-plus.org/repository/7.x/7.4.1/npp.7.4.1.Installer.exe"
    source "https://notepad-plus-plus.org/repository/7.x/7.3.3/npp.7.3.3.Installer.exe"
    action :install
  end
else
  package "vim" do
    action :install
  end
end
