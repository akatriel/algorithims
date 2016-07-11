input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{|i| i.to_i}
end

n = input.shift.first

input = input.sort

p input