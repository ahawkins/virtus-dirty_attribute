require 'spec_helper'

describe 'strings' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type) { String }
    let(:attribute)     { :email }
    let(:initial_value) { 'adam@broadcastingadam.com' }
    let(:other_value)   { 'adam@hawkins.io' }
  end
end
