require 'spec_helper'

describe Virtus::Attribute::Float do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:attribute)     { :score }
    let(:initial_value) { 12.34 }
    let(:other_value)   { 230.3 }
  end
end
