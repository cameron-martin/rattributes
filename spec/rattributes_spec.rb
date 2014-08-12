require 'spec_helper'

describe Rattributes do

  context 'when included in a class' do

    let(:class_with_attributes) do
      Class.new { include Rattributes.new(:attr, :other_attr) }
    end

    subject { class_with_attributes.new(attr: :value, other_attr: :other_value) }

    it { should respond_to(:attr, :other_attr) }
    its(:attr) { should == :value }
    its(:other_attr) { should == :other_value }

  end

  context 'as a standalone module' do

    subject { Rattributes.new(:attr, :other_attr) }

    its(:to_s) { should == 'Rattributes(:attr, :other_attr)' }
    its(:inspect) { should == 'Rattributes(:attr, :other_attr)' }

  end

end