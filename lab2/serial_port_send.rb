require 'rubyserial'
require 'bitstuff'

com1 = Serial.new '/dev/tnt0'

while true
	msg = STDIN.gets.chop #get str without \n
	n=msg.length/15+1 # делим на 15 т.к. ~ занимает 1 байт (но после битстаффигна отображается как 4 char)
					# кирилица также занимает 1 байт, но 1 символ кирилицы отображается как 4 char	
	k=0
	while k<n do	
		pack = pack_msg msg[k*15,15]
		p pack
		com1.write pack
		k+=1	
	end
end