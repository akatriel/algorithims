def knapsack(capacity, bars)
	if capacity == 0 || bars.nil? || bars[0].nil?
		return 0
	end

	solutions = []
	sum = 0
	(1..capacity).each do |i|
		break if sum > capacity
		bars.combination(i).lazy.each do |comb|
			sum = comb.reduce(&:+)
			solutions << sum
		end
	end

	solutions.select{|i| i <= capacity}.max
end



input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{ |i| i.to_i }
end

capacity = input[0][0]
bars = input[1]

p knapsack capacity, bars