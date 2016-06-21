def euclidGCD a, b #Euclid Algorithm for finding Greatest Common Divisor
	if b == 0
		a
	else
		aPrime = a / b
		euclidGCD b, aPrime
	end	
end
p euclidGCD 3918848, 1653264