require 'spec_helper'

describe 'finums' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type) { Fixnum }
    let(:attribute)     { :age }
    let(:initial_value) { 28 }
    let(:other_value)   { 30 }
  end
end
