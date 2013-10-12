require 'spec_helper'

describe 'booleans' do
  it_should_behave_like "Dirty Trackable Attribute" do
    let(:type) { TrueClass }
    let(:attribute)     { :is_admin }
    let(:initial_value) { true }
    let(:other_value)   { false }
  end
end
