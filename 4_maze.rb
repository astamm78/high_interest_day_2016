require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'
device :sphero, :driver => :sphero

def contact(*args)
  @contacts ||= 0
  @contacts += 1
  puts "Contact #{@contacts}"
end

def print_total
  sleep 3
  puts "*** #{@student_name}'s' number of collisions: #{@contacts || 0} ***"
  # send_to_api(@name, @contacts)
end

def save_name(student_name)
  @student_name = student_name
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
  # on sphero, :collision => :contact
  puts "What is your name?"
  student_name = gets.chomp
  save_name(student_name)
  # sphero.start_calibration
  # sphero.set_color(:green)
  # sleep 8
  # sphero.finish_calibration
  # 3.times do
  #   sphero.roll 70, 0
  #   sleep 3
  #   sphero.roll 70, 180
  #   sleep 3
  #   sphero.stop
  #   sphero.set_color(:blue)
  # end
  print_finished
  print_total
end