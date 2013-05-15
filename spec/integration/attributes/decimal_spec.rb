require 'spec_helper'

describe Virtus::Attribute::Decimal do
  it_should_behave_like 'Dirty Trackable Attribute' do
    let(:attribute)     { :price }
    let(:initial_value) { BigDecimal("12.3456789") }
    let(:other_value)   { BigDecimal("21.3324818") }
  end
end
