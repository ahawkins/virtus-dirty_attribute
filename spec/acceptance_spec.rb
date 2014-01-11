require 'spec_helper'

describe "Dirty tracking" do
  let(:attribute) { :title }
  let(:initial_value) { 'Virtus' }
  let(:other_value) { 'Virtus *dirty* '}

  let(:model) do
    model = Class.new do
      include Virtus.model
      include Virtus::DirtyAttribute
    end

    model.attribute attribute, String

    model
  end

  subject { model.new }

  it { should_not be_dirty }

  it "should not be dirty after instantiating with attributes" do
    object = model.new attribute => initial_value
    object.should_not be_dirty
  end

  context "when object is dirty" do
    it "should become clean again" do
      subject[attribute] = initial_value
      subject.clean!

      subject.should_not be_dirty

      subject.original_attributes.should be_empty
      subject.dirty_attributes.should be_empty
    end

    it "should become clean when the attribute goes back to the initial value" do
      subject[attribute] = initial_value
      subject.clean!

      subject[attribute] = other_value

      subject.should be_dirty
      subject.dirty_attributes.should include(attribute)

      subject[attribute] = initial_value

      subject.should_not be_dirty
      subject.dirty_attributes.should be_empty
      subject.original_attributes.should be_empty
    end
  end

  context "when value is set on a new object" do
    before do
      subject[attribute] = initial_value
    end

    it { should be_dirty }

    it "marks the attribute as dirty" do
      subject.attribute_dirty?(attribute).should be(true)
    end

    it "sets new value in dirty_attributes hash" do
      subject.dirty_attributes[attribute].should == initial_value
    end
  end

  context "when other value is set on a new object with attribute already set" do
    let(:subject) { model.new attribute => initial_value }

    before do
      subject[attribute] = other_value
    end

    it "should have different values" do
      initial_value.should_not == other_value
    end

    it { should be_dirty }

    it "marks the attribute as dirty" do
      subject.attribute_dirty?(attribute).should be_true
    end

    it "sets new value in dirty_attributes hash" do
      subject.dirty_attributes[attribute].should == other_value
    end

    it "sets original value" do
      subject.original_attributes[attribute].should == initial_value
    end
  end
end
