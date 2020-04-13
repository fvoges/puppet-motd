require 'spec_helper'
# require 'shared_contexts'

describe 'motd::fragment' do
  let(:title) { 'example_name' }

  # use rspec-puppet-facts to generate an iterator to test
  # each supported platform
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge(foo: 'bar',
                    concat_basedir: '/dne',
                    is_pe: 'no')
      end

      context 'with neither content nor source attributes' do
        it do
          expect {
            is_expected.to compile
          }.to raise_error(%r{Has to specify one of content or source})
        end
      end

      context 'with both content and source attributes' do
        let(:params) do
          {
            content: 'test',
            source: 'fail',
          }
        end

        it do
          expect {
            is_expected.to compile
          }.to raise_error(%r{Has to specify one of content or source})
        end
      end

      context 'with content attribute' do
        let(:params) do
          {
            content: 'test',
            #:order => 10,
          }
        end

        it do
          is_expected.to contain_concat__fragment('motd_fragment_example_name')
            .with('target' => '/etc/motd',
                  'content' => %r{test},
                  'order' => '10')
        end
      end

      context 'with source and order attributes' do
        let(:params) do
          {
            source: 'test',
            order: 20,
          }
        end

        it do
          is_expected.to contain_concat__fragment('motd_fragment_example_name')
            .with('target' => '/etc/motd',
                  'source' => %r{test},
                  'order' => '20')
        end
      end
    end
  end
end
