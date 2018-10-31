require 'spec_helper'
describe 'commands' do

  context 'with defaults for all parameters' do
    it { should contain_class('commands') }
  end
end
