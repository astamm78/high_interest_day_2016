require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

def change_colors
  sphero.set_color(:red)
  sleep 1
  sphero.set_color(:green)
  sleep 1
  sphero.set_color(:yellow)
  sleep 1
  sphero.set_color(:blue)
  sleep 1
  sphero.set_color(:white)
  sleep 1
  sphero.set_color(160, 32, 240)
  sleep 1
end

work do
  sphero.set_color(:red)
  sleep 5
  change_colors
  puts "Finished"
end

