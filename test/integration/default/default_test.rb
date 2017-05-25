# # encoding: utf-8
# frozen_string_literal: true

# Inspec test for recipe my_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os.windows?
  # This is an example test, replace with your own test.
  describe user("root") do
    it { should_not exist }
  end
  describe file("C:\\Program\ Files\ \(x86\)\\Google\\Chrome\\Application\\chrome.exe") do
    it { should exist }
  end
  describe file("C:\\Program\ Files\ \(x86\)\\Notepad\+\+\\notepad\+\+.exe") do
    it { should exist }
  end
else
  # This is an example test, replace it with your own test.
  describe port(80)  do
    it { should_not be_listening }
  end

  describe package('vim') do
    it { should be_installed }
  end
end
