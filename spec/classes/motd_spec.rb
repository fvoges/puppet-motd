require 'spec_helper'
#require 'shared_contexts'

describe 'motd' do
  # by default the hiera integration uses hirea data from the shared_contexts.rb file
  # but basically to mock hiera you first need to add a key/value pair
  # to the specific context in the spec/shared_contexts.rb file
  # Note: you can only use a single hiera context per describe/context block
  # rspec-puppet does not allow you to swap out hiera data on a per test block
  #include_context :hiera


  # use rspec-puppet-facts to generate an iterator to test
  # each supported platform
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :concat_basedir => '/dne',
          :is_pe          => 'no',
        })
      end

      # below is a list of the resource parameters that you can override.
      # By default all non-required parameters are commented out,
      # while all required parameters will require you to add a value
      let(:params) do
        {
          #:motd_file => "/etc/motd",
          #:motd_local_enabled => true,
          #:add_puppet_warning => false,
        }
      end
      # add these two lines in a single test block to enable puppet and hiera debug mode
      # Puppet::Util::Log.level = :debug
      # Puppet::Util::Log.newdestination(:console)
      it do
        should contain_concat('/etc/motd').
                 with({"owner"=>"root",
                       "group"=>"0",
                       "mode"=>"0644"})
      end
    #  it do
    #    should not contain_concat__fragment('motd_puppet_warning').
    #      with_content(/test\.example\.com is managed by Puppet\./)#.
    #             with({"target"=>"/etc/motd",
    #                   "order"=>"00"})
    #  end
      it do
        should contain_concat__fragment('motd_local').
                 with({"source"=>"/etc/motd.local",
                       "target"=>"/etc/motd",
                       "order"=>"99"})
      end
    end
  end
end
