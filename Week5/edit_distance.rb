def editDistance a, b
	c = a.length
	d = b.length
	if (c == 0 && d == 0) || a == b
		return 0
	elsif c == 0
		return d
	elsif d == 0
		return c
	end

	arr = Array.new(c + 1) { Array.new(d + 1 ) }

	(0..c).each {|i| arr[i][0] = i}
	(0..d).each {|j| arr[0][j] = j}
	(1..d).each do |j|
		(1..c).each do |i|
			arr[i][j] = if a[i - 1] == b[j - 1] 
							arr[i - 1][j - 1]       
						else
							[ 
								arr[i - 1][j] + 1,    # deletion
								arr[i][j - 1] + 1,    # insertion
								arr[i - 1][j - 1] + 1,  # substitution
							].min
			end
		end
  end
  arr[c][d]
end



input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line
end

p editDistance input[0], input[1]