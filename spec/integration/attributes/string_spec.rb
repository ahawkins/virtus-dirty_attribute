require 'spec_helper'

describe Virtus::Attribute::String do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:attribute)     { :email }
    let(:initial_value) { 'adam@broadcastingadam.com' }
    let(:other_value)   { 'adam@hawkins.io' }
  end
end
