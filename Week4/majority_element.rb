def majorityElement n, arr
	arr.each do |i|
		unless arr.count(i) > (n / 2)
			return 0
		else 
			return 1
		end
	end
end

input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{|i| i.to_i}
end

n = input[0][0]

p majorityElement n, input[1]