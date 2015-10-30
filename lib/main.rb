#!/usr/bin/ruby
# encoding: utf-8
require "./Racional.rb"

a=Racional.new(5,20)
b=Racional.new(12,18)

puts "Racionales sin simplificar"
puts "  a = #{a.to_s}"
puts "  b = #{b.to_s}"
puts "Racionales simplificadas: "
a.simp
b.simp
puts "  a = #{a.to_s}"
puts "  b = #{b.to_s}"
puts "Suma: #{a.+(b).to_s}"
puts "Resta: #{a.-(b).to_s}"
puts "Multiplicación: #{a.·(b).to_s}"
puts "División: #{a./(b).to_s}"