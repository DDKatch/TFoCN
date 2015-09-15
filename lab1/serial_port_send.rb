require 'rubyserial'

com1 = Serial.new '/dev/tnt0', 57600

while true
	com1.write STDIN.gets.chomp
end