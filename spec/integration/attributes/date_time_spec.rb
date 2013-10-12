require 'spec_helper'

describe "date times" do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type)          { DateTime }
    let(:attribute)     { :created_at }
    let(:initial_value) { DateTime.now }
    let(:other_value)   { DateTime.now - 1000 }
  end
end
