require 'rubyserial'

com2 = Serial.new '/dev/tnt1', 57600

while true
    inp_msg = com2.read(1)
    if inp_msg.empty?; sleep(1) 
	else puts inp_msg end
end