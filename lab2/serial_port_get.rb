require 'rubyserial'
require 'bitstuff'

# с кирилицей фигня какая-то =( а так нормик работает

com2 = Serial.new '/dev/tnt1'

while true
    pack = com2.read(16)
    if pack.empty?; sleep(1) 
	else 
		bmsg = str_to_str_of_bits pack
		bmsg = rebitstuff bmsg
		pack = show_pack bmsg
	end
end

# 123 -> \xFE123 передача
# \xFE123 -> ~123 прием