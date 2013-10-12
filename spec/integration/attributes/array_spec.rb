require 'spec_helper'

describe 'arrays' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type) { Array }
    let(:attribute)     { :colors }
    let(:initial_value) { [ 'red', 'green', 'blue' ] }
    let(:other_value)   { [ 'orange', 'yellow', 'gray' ] }
  end
end
