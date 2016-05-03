require 'spec_helper'
describe 'git_daemon' do

  context 'with defaults for all parameters' do
    it { should contain_class('git_daemon') }
  end
end
