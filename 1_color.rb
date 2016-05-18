require 'artoo'
require './helper'
include Helper

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

work do
  sphero.set_color(:green)
  hold 8
  sphero.set_color(:red)
end

# work do
#   sphero.set_color(:red)
#   hold 8
#   sphero.set_color(:green)
#   hold 1
#   sphero.set_color(:yellow)
#   hold 1
#   sphero.set_color(:blue)
#   hold 1
#   sphero.set_color(:white)
#   hold 1
#   sphero.set_color(160, 32, 240)
#   hold 1
# end

# work do
#   sphero.set_color(:red)
#   hold 5
#   100.times do
#     r = rand(255)
#     g = rand(255)
#     b = rand(255)
#     sphero.set_color(r, g, b)
#     puts "red: #{r}, green: #{g}, blue: #{b}"
#     hold(0.5)
#   end
# end