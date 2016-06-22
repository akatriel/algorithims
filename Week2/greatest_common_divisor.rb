# require 'benchmark'
def euclidGCD a, b #Euclid Algorithm for finding Greatest Common Divisor
	if b == 0
		a
	else
		euclidGCD b, a % b	
	end	
end
input = gets.chomp.split(' ')
input[0] = input[0].to_i
input[1] = input[1].to_i
p euclidGCD input[0], input[1]
# p Benchmark.measure{p euclidGCD input[0], input[1]}