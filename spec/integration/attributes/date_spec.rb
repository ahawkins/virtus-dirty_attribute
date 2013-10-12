require 'spec_helper'

describe 'dates' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type) { Date }
    let(:attribute)     { :created_on }
    let(:initial_value) { Date.today }
    let(:other_value)   { Date.today + 1000 }
  end
end
