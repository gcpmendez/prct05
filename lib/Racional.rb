#!/usr/bin/ruby
# encoding: utf-8

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
    def string
    	# Interpola el valor del atributo para meterlo en el string, #{ atributo }
        return "#{@num}/#{@den}"
    end
	
	# Cálcula suma
    def sum(other)
        n=(@num*other.den)+(other.num*@den)
        d=@den*other.den
        r = Racional.new(n,d)
        return r
    end
    
    # Cálcula resta
    def res(fraccion)
        n=(@num*fraccion.den)-(fraccion.num*@den)
        d=@den*fraccion.den
        r=Racional.new(n,d)
        return r
    end
    
    # Cálcula multiplicación
    def mul(fraccion)
        n=(@num*fraccion.num)
        d=@den*fraccion.den
        r=Racional.new(n,d)
        return r
    end
    
    # Cálcula división
    def div(fraccion)
        n=(@num*fraccion.den)
        d=@den*fraccion.num
        r=Racional.new(n,d)
        return r
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