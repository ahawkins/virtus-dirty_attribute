require 'spec_helper'

describe Virtus::Attribute::DateTime do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:attribute)     { :created_at }
    let(:initial_value) { DateTime.now }
    let(:other_value)   { DateTime.now - 1000 }
  end
end
