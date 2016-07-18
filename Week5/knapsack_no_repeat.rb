def knapsack n, capacity, bars
	if bars.length == 0 || bars[0].nil? || capacity == 0
		return 0
	end
	solutions = []
	# Compare each bar with another and the addition of the two is stored. the max is the solution
	(bars.length - 1).downto 0 do |i|
		bars.each_with_index do |x, j| 
			if x + bars[i] <= capacity
				solutions << x + bars[i] unless j == i
			end
		end
	end
	solutions.max
end


input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{ |i| i.to_i }
end

n = input[0][1]
capacity = input[0][0]
bars = input[1]

p knapsack n, capacity, bars