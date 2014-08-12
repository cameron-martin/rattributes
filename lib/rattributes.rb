class Rattributes < Module

  VERSION = '0.0.3'

  def initialize(*attributes)
    @attributes = attributes
    super() do

      attr_reader *attributes

      define_method :initialize do |data|
        attributes.each do |attribute|
          instance_variable_set("@#{attribute}", data[attribute])
        end
      end

    end
  end

  def inspect
    "#{self.class.to_s}(#{@attributes.map(&:inspect).join(', ')})"
  end

  alias_method :to_s, :inspect

end