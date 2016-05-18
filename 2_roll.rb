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

work do
  calibrate
  sphero.roll 40, 0
  hold 2
end

# work do
#   calibrate
#   2.times do
#     sphero.roll 40, 0
#     hold 2
#     sphero.stop
#     hold 1
#     sphero.roll 40, 180
#     hold 2
#     sphero.stop
#     hold 1
#   end
# end

# work do
#   calibrate
#   sphero.roll 30, 0
#   hold 2
#   sphero.roll 30, 90
#   hold 2
#   sphero.roll 30, 180
#   hold 2
#   sphero.roll 30, 270
#   hold 2
# end

# work do
#   calibrate
#   angle = 0
#   while angle < 360
#     sphero.roll(30, angle)
#     hold 0.1
#     angle += 20
#   end
#   sphero.stop
# end
