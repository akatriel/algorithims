def getChange n
	total, remainder, tens, fives = 0 , 0, 0 , 0

	remainder = n
	# is divisible by 10
	if n % 10 != 0
		remainder = n % 10
		tens = n / 10
	elsif n % 10 == 0
		tens = n / 10
		remainder = 0
	end

	if remainder % 5 != 0 
		fives = remainder / 5
		remainder = remainder % 5
	elsif remainder % 5 == 0
		fives = remainder / 5
		remainder = remainder / 5
	end

	if remainder
		total = fives + tens + remainder
	end
	total
end
input = gets.chomp.to_i
p getChange input