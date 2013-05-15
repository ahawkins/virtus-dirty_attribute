require 'spec_helper'

describe Virtus::Attribute::Array do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:attribute)     { :colors }
    let(:initial_value) { [ 'red', 'green', 'blue' ] }
    let(:other_value)   { [ 'orange', 'yellow', 'gray' ] }
  end
end
