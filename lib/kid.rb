require_relative "./dance_module"
require_relative "./meta_dancing_module"
require_relative "./fancy_dance"

class Kid
  #   include Dance #use all methods in the module as instance methods
  #   extend MetaDancing #extend creates a class method
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# angelina = Kid.new("Angelina")
# puts "#{angelina.name} says: #{angelina.twirl}"
