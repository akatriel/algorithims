def majorityElement n, arr
	majorityElem = -1
	count = 0
	for i in 0..n

		if count == 0
			majorityElem = arr[i]
		end

		if arr[i] == majorityElem
			count += 1
		else
			count -= 1
		end
	end
	count = 0 
	for i in 0..n
		if arr[i] == majorityElem
			count += 1
		end
	end
	count > (n / 2) ? 1 : 0
end

input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{|i| i.to_i}
end

n = input[0][0]

p majorityElement n, input[1]