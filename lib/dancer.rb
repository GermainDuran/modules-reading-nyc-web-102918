require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
include Dance  #To lend our two classes all of the methods of the Dance module, we use the include keyword
extend MetaDancing #In order to lend a module's methods to a class as class methods, we use the extend keyword.
extend FancyDance::ClassMethods
 include FancyDance::InstanceMethods


attr_accessor :name

    def initialize(name)
      @name = name
    end

end
