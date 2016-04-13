require 'spec_helper'
describe 'docker_bamberg' do

  context 'with defaults for all parameters' do
    it { should contain_class('docker_bamberg') }
  end
end
