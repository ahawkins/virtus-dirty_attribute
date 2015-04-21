require 'spec_helper'

describe "Dirty tracking" do
  let(:attribute) { :title }
  let(:initial_value) { 'Virtus' }
  let(:other_value) { 'Virtus *dirty* '}

  let(:model) do
    model = Class.new do
      include Virtus.model
      include Virtus::DirtyAttribute
      include Virtus::DirtyAttribute::InitiallyClean
    end

    model.attribute attribute, String

    model
  end

  subject { model.new }

  it { is_expected.to be_clean }

  it "should not be dirty after instantiating with attributes" do
    object = model.new attribute => initial_value
    expect(object).to be_clean
  end

  context "when object is dirty" do
    it "should become clean again" do
      subject[attribute] = initial_value
      subject.clean!

      expect(subject).to be_clean

      expect(subject.original_attributes).to be_empty
      expect(subject.dirty_attributes).to be_empty
    end

    it "should become clean when the attribute goes back to the initial value" do
      subject[attribute] = initial_value
      subject.clean!

      subject[attribute] = other_value

      expect(subject).to be_dirty
      expect(subject.dirty_attributes).to include(attribute)

      subject[attribute] = initial_value

      expect(subject).to be_clean
      expect(subject.dirty_attributes).to be_empty
      expect(subject.original_attributes).to be_empty
    end
  end

  context "when value is set on a new object" do
    before do
      subject[attribute] = initial_value
    end

    it { is_expected.to be_dirty }

    it "marks the attribute as dirty" do
      expect(subject.attribute_dirty?(attribute)).to eq(true)
    end

    it "sets new value in dirty_attributes hash" do
      expect(subject.dirty_attributes[attribute]).to eq(initial_value)
    end
  end

  context "when other value is set on a new object with attribute already set" do
    let(:subject) { model.new attribute => initial_value }

    before do
      subject[attribute] = other_value
    end

    it "should have different values" do
      expect(initial_value).not_to eq(other_value)
    end

    it { is_expected.to be_dirty }

    it "marks the attribute as dirty" do
      expect(subject.attribute_dirty?(attribute)).to eq(true)
    end

    it 'marks the attribute with options as dirty' do
      expect(
        subject.attribute_dirty?(attribute, from: initial_value, to: other_value)
      ).to eq(true)
    end

    it 'not marks the attribute with options as dirty' do
      expect(
        subject.attribute_dirty?(attribute, from: other_value, to: initial_value)
      ).to eq(false)
    end

    it "sets new value in dirty_attributes hash" do
      expect(subject.dirty_attributes[attribute]).to eq(other_value)
    end

    it "sets original value" do
      expect(subject.original_attributes[attribute]).to eq(initial_value)
    end
  end
end
