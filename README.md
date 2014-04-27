# Rattributes

Read-only structs for ruby.

Simplifies the following pattern with a bit of metaprogramming:

```ruby
class Car

  attr_reader :engine, :brakes

  def initialize(attributes)
    @engine = attributes[:engine]
    @brakes = attributes[:brakes]
  end

end
```

## Installation

Add this line to your application's Gemfile:

    gem 'rattributes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rattributes

## Usage

```ruby
require 'rattributes'

class Car
  include Rattributes.new(:engine, :brakes)
end

car = Car.new(engine: 'an engine', brakes: 'the brakes')

car.engine # 'an engine'
car.brakes # 'the brakes'
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
