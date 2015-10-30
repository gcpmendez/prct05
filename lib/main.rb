#!/usr/bin/ruby
# encoding: utf-8
require "./Racional.rb"

a=Racional.new(5,20)
b=Racional.new(12,18)

puts "Racionales sin simplificar"
puts "  a = #{a.string}"
puts "  b = #{b.string}"
puts "Racionales simplificadas: "
a.simp
b.simp
puts "  a = #{a.string}"
puts "  b = #{b.string}"
puts "Suma: #{a.sum(b).string}"
puts "Resta: #{a.res(b).string}"
puts "Multiplicación: #{a.mul(b).string}"
puts "División: #{a.div(b).string}"