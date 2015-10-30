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
puts "Suma: #{a.sum(b).to_s}"
puts "Resta: #{a.res(b).to_s}"
puts "Multiplicación: #{a.mul(b).to_s}"
puts "División: #{a.div(b).to_s}"