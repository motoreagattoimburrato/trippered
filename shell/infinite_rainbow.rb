#!/usr/bin/env ruby

require "tco"

rainbow = ["#622e90", "#2d3091", "#00aaea", "#02a552", "#fdea22", "#eb443b", "#f37f5a"]

exit_requested = false
Kernel.trap( "INT" ) { exit_requested = true }

puts "Interrupt this loop using CTRL+C"

5.downto(1) do |s|
  puts "The rainbow starts in#{'%2d' % s} seconds..."
  sleep 1
end

puts "\n"

while !exit_requested
  rainbow.each { |colour| print "     ".bg colour }
  sleep 0.05
  puts
end
