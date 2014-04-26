class Rattributes < Module

  VERSION = '0.0.1'

  def initialize(*attributes)
    super() do

      define_singleton_method :included do |other|
        other.class_eval do
          attr_reader *attributes
        end
      end

      define_method :initialize do |data|
        attributes.each do |attribute|
          instance_variable_set("@#{attribute}", data[attribute])
        end
      end

    end
  end
end