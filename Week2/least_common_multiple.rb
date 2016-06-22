def lcm a,b
	#For any two positive integers a and b, LCM(a, b) · GCD(a, b) = a · b
	gcd = euclidGCD a, b
	return a * b / gcd #lcm
end

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
p lcm input[0], input[1]