# # encoding: utf-8
# frozen_string_literal: true

# Inspec test for recipe my_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os[:family] == 'debian'
  describe file('/usr/bin/vim') do
    it { should exist }
    it { should be_symlink }
  end
elsif os[:family] == 'redhat'
  describe file('/usr/bin/vim') do
    it { should exist }
    it { should_not be_symlink }
  end
end

describe port(8080) do
  it { should_not be_listening }
end

describe port(80) do
  it { should_not be_listening }
end
