# Sphero Programming Using Artoo

These files were created to introduce programming in Ruby and how the Artoo gem can be used to program a Sphero.

## Installing

    bundle install

## Connecting to Sphero

### OSX

The main steps are:

* Pair your computer and the Sphero
* Find out the sphero bluetooth address
* Connect to the device via Artoo
* 
First pair your computer and Sphero. You can do this using bluetooth preferences. (Sphero won't stay connected)

Find out serial port address by running this command:

    $ ls /dev/tty.Sphero*

Now you are ready to run the example code, be sure to update this line with correct port.

    connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BPO-AMP-SPP'

