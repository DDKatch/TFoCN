require 'rubyserial'

com2 = Serial.new '/dev/tnt3'

while true
    inp_msg = com2.read(4)
    if inp_msg.empty?; sleep(1) 
	else puts inp_msg end
end