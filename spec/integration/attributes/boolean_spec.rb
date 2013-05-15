require 'spec_helper'

describe Virtus::Attribute::Boolean do
  it_should_behave_like "Dirty Trackable Attribute" do
    let(:attribute)     { :is_admin }
    let(:initial_value) { true }
    let(:other_value)   { false }
  end
end
