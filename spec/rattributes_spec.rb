#require 'spec_helper'

require 'rattributes'

class ClassWithAttributes
  include Rattributes.new(:attr, :other_attr)
end

describe Rattributes do

  let(:class_with_attributes) { ClassWithAttributes.new(attr: :value, other_attr: :other_value) }

  it 'should create readers' do
    expect(class_with_attributes).to respond_to(:attr, :other_attr)
  end

  it 'should have attributes with given values' do
    expect(class_with_attributes.attr).to eq(:value)
    expect(class_with_attributes.other_attr).to eq(:other_value)
  end
end