require_relative 'oneliner'
require_relative 'stack'

module RPN
  # Determines how to calculate user input.
  # 
  class Calculator
    attr_accessor :expression, :operands, :operators, :result

    # Sets operands and operators as empty arrays.
    # 
    def initialize
      @operands = []
      @operators = []  
    end

    # Calculates RPN value depending on type of input. 
    # If input matches one_liner? format, a new OneLiner instance is created and result is returned.
    # If input does not match one_liner? format, but is valid, a new Stack instance is created and result is returned.
    # 
    def classify(input)
      @expression = input
      if one_liner? == true
        OneLiner.new(self).calculate
      else
        Stack.new(self).calculate
      end

    end

    protected
    # If input matches one_liner?, RPN calculation can be performed on whole line at once.
    # If it doesn't match, the data needs to be calculated through use of the @operands and @operators arrays.
    # 
    def one_liner?
      true if /(\-*\d+\.*\d*) (\-*\d+\.*\d*) (\+|\-|\*|\/)(?!\d)/ =~ @expression 
    end 
  end
end
