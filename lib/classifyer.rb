require_relative 'calculator'

# For each type of input, this class will classify the input.
# After classification, a new instance of the appropriate class will be created.
# The input-based class is responsible for knowing how to do a RPN calculation for that specific input type.
# This class only knows about classifying input types.
module RPN
  class Classifyer
    # attr_accessor :one_liner, :stack
    def initialize
    end

    def classify
      if one_liner? == true
        @one_liner = OneLiner.new
      else
        @stack = Stack.new
      end
    end

    def one_liner?
      true if /(\-*\d+\.*\d*) (\-*\d+\.*\d*) (\+|\-|\*|\/)(?!\d)/ =~ Calculator.instance.expression
    end 


  end
end