require 'spec_helper'

describe 'hashes' do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:type)          { Hash }
    let(:attribute)     { :settings }
    let(:initial_value) { { :one => 1 } }
    let(:other_value)   { { :two => 2 } }
  end
end
