require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

def create_square
  sphero.roll 30, 0
  sleep 2
  sphero.roll 30, 90
  sleep 2
  sphero.roll 30, 180
  sleep 2
  sphero.roll 30, 270
  sleep 2
end

work do
  sphero.start_calibration
  sphero.set_color(:green)
  sleep 10
  sphero.finish_calibration
  create_square
end
