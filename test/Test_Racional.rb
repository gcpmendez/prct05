# encoding: utf-8

require 'lib/Racional.rb'
require 'test/unit'

class TestRacional < Test::Unit::TestCase
    def setup
        @unidad = Racional.new(2,2)
        @natural = Racional.new(4)
        @simplificable = Racional.new(12,24)

		#Para las operaciones aritméticas
		@op1 = Racional.new(5,20)
		@op2 = Racional.new(12,18)
    end
    
    def test_aritmetic
        #suma
        assert_equal("11/12",(@op1.sum(@op2)).to_s)
        
        #resta
        assert_equal("-5/12",(@op1.res(@op2)).to_s)
        
        
        #multiplicación
        assert_equal("1/6",(@op1.mul(@op2)).to_s)
        
        
        #división
        assert_equal("3/8",(@op1.div(@op2)).to_s)
    end
    
    def test_exceptions
		assert_raise(ArgumentError){Racional.new("one",1)}
		assert_raise(ZeroDivisionError){Racional.new(1,0)}
    end
end