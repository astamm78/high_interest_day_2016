require 'artoo'
require './helper'
include Helper

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

def calibrate
  sphero.start_calibration
  sphero.set_color(:green)
  hold 8
  sphero.finish_calibration
end

def print_finished
  puts ""
  puts " _____  _       _       _           _ "
  puts "|   __||_| ___ |_| ___ | |_  ___  _| |"
  puts "|   __|| ||   || ||_ -||   || -_|| . |"
  puts "|__|   |_||_|_||_||___||_|_||___||___|"
  puts ""
end

work do
  calibrate

  # Enter our code for the maze here using:
  # sphero.roll(speed, direction)
  # hold(seconds)
  # sphero.stop
  # sphero.set_color(color_name or r, g, b)
  # We can use loops, if / else statements or anything else to make it easier for us.

  print_finished
end