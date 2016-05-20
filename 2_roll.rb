require 'artoo'
require './helper'
include Helper

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

# Explain why we create a method for
# calibrating the sphero
def calibrate
  sphero.start_calibration
  sphero.set_color(:green)
  hold 5
  sphero.finish_calibration
end

# A simple example of rolling forward and
# back two times.

# work do
#   calibrate
#   2.times do
#     sphero.roll 60, 0
#     hold 2
#     sphero.stop
#     sphero.roll 60, 180
#     hold 2
#     sphero.stop
#   end
# end

# An example of how we can program
# Sphero to roll in a square.

# work do
#   calibrate
#   sphero.roll 60, 0
#   hold 2
#   sphero.stop
#   sphero.roll 60, 90
#   hold 2
#   sphero.stop
#   sphero.roll 60, 180
#   hold 2
#   sphero.stop
#   sphero.roll 60, 270
#   hold 2
#   sphero.stop
# end

# An example of how we can roll Sphero
# in a circle two times.

# work do
#   calibrate
#   2.times do
#     angle = 0
#     while angle < 360
#       sphero.roll(80, angle)
#       hold 0.1
#       angle += 20
#     end
#     sphero.stop
#   end
# end
