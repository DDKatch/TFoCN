require 'rubyserial'

com1 = Serial.new '/dev/tnt2'

while true
	com1.write STDIN.gets.chomp
end