#!/usr/bin/ruby
# encoding: utf-8

# Corrección de cannot load such file!!!
class Racional
    attr_accessor :num, :den
    
    # CONSTRUCTOR, Permite 1 y dos argumentos. Sí se da 1 argumento sería el numerador
	def initialize(num, den=1)
	    # The raise method is from the Kernel module. By default, raise creates an exception of the RuntimeError class.
		raise ArgumentError, "El Numerador no es un número" unless num.is_a?Numeric
		raise ArgumentError, "El Denominador no es un número" unless den.is_a?Numeric
		raise ZeroDivisionError, "El Denominador no puede ser 0" if den==0
		# Variables de instancia
		@num, @den = num, den
		# Si no pongo nada no devuelve el objeto construido si no la última línea
		simp
		return self
	end
	
	# Imprime racional
    def to_s
    	# Interpola el valor del atributo para meterlo en el string, #{ atributo }
        "#{@num}/#{@den}"
    end
	
	# Cálcula suma
    def +(other)
        n=(@num*other.den)+(other.num*@den)
        d=@den*other.den
        Racional.new(n,d)
    end
    
    # Cálcula resta
    def -(other)
        n=(@num*other.den)-(other.num*@den)
        d=@den*other.den
        Racional.new(n,d)
    end
    
    # Cálcula multiplicación
    def ·(other)
        n=(@num*other.num)
        d=@den*other.den
        Racional.new(n,d)
    end
    
    # Cálcula división
    def /(other)
        n=(@num*other.den)
        d=@den*other.num
        Racional.new(n,d)
    end
    
    # Cálculo mcd
    def mcd (num, den)
        a, b = num.abs, den.abs
        while b != 0
            a, b = b, a % b
        end
        return a
    end
    
    #cálculo del mcd sin parámetros
    def mcd
        a, b = @num.abs, @den.abs
        while b != 0
            a, b = b, a % b
        end
        return a
    end
	
	#simplificación
    def simp
        div = mcd
        @num = @num/div
        @den = @den/div
    end
    
end