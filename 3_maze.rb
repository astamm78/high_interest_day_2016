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
  # have the kids write a custom program
  # that will drive Sphero through the
  # maze that is created by tape on the floor.
end