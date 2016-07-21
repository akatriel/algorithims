def primitiveCalculator n
	sequence = []
	n.downto 1 do |i|
		sequence << i
		break if i == 0
		if i % 3 == 0
			i = i / 3
		elsif i % 2 == 0
			i = i / 2
		else
			i -= 1
		end
	end
	sequence.reverse
end

p primitiveCalculator gets.chomp.to_i