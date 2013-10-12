require 'spec_helper'

describe 'floats' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type)          { Float }
    let(:attribute)     { :score }
    let(:initial_value) { 12.34 }
    let(:other_value)   { 230.3 }
  end
end
