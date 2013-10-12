require 'spec_helper'

describe 'times' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type)          { Time }
    let(:attribute)     { :birthday }
    let(:initial_value) { Time.now }
    let(:other_value)   { Time.now - 1000 }
  end
end
