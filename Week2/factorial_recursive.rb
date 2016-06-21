def factorial n
	if n === 0
		1
	else
		return factorial(n-1) * n
	end
end
p factorial 5