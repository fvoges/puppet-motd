require 'spec_helper'
#require 'shared_contexts'

describe 'motd::fragment' do
  let(:title) { 'example_name' }

  let(:facts) do
    {
      :osfamily       => 'RedHat',
      :concat_basedir => '/dfe',
      :id             => 'dummy',
      :kernel         => 'Linux',
      :is_pe          => 'no',
      :path           => '/bin',
    }
  end

  context 'with neither content nor source attributes' do
    it do
      expect {
        should compile
      }.to raise_error(/Has to specify one of content or source/)
    end
  end

  context 'with both content and source attributes' do
    let(:params) do
      {
        :content => 'test',
        :source => 'fail',
      }
    end
    it do
      expect {
        should compile
      }.to raise_error(/Has to specify one of content or source/)
    end
  end

  context 'with content attribute' do
    let(:params) do
      {
        :content => 'test',
        #:order => 10,
      }
    end
    it do
      should contain_concat__fragment('motd_fragment_example_name').
               with({"target"=>"/etc/motd",
                     "content"=> /test/,
                     "order"=>"10"})
    end
  end

  context 'with source and order attributes' do
    let(:params) do
      {
        :source => 'test',
        :order => 20,
      }
    end

    it do
      should contain_concat__fragment('motd_fragment_example_name').
               with({"target"=>"/etc/motd",
                     "source"=> /test/,
                     "order"=>"20"})
    end
  end
end
