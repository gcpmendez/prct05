# encoding: utf-8
require 'lib/Racional.rb'
require 'test/unit'

class TestRacional < Test::Unit::TestCase
    def setup
        #@error = Racional.new(1,0)
        @unidad = Racional.new(2,2)
        @natural = Racional.new(4)
        @simplificable = Racional.new(12,24)

		#Para las operaciones aritméticas
		@op1 = Racional.new(5,20)
		@op2 = Racional.new(12,18)
    end
    
    def test_aritmeticos
        #suma
        assert_equal("11/12",(@op1.sum(@op2)).string)
        
        #resta
        assert_equal("-5/12",(@op1.res(@op2)).string)
        
        
        #multiplicación
        assert_equal("1/6",(@op1.mul(@op2)).string)
        
        
        #división
        assert_equal("3/8",(@op1.div(@op2)).string)
        

    end
end