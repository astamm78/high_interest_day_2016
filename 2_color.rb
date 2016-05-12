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

# def random_colors
#   every(1.second) do
#     sphero.set_color(rand(255),rand(255),rand(255))
#   end
# end

work do
  sphero.set_color(:red)
  number_of_times = 1
  5.times do
    puts number_of_times
    change_colors
    number_of_times = number_of_times + 1
  end
  puts "Finished"
end

# work do
#   sphero.set_color(:red)
#   random_colors
# end