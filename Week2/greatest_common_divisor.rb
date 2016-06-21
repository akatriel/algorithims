def euclidGCD a, b #Euclid Algorithm for finding Greatest Common Divisor
	if b == 0
		a
	else
		euclidGCD b, a % b	
	end	
end
p euclidGCD 1071, 462