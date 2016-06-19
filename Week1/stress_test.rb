# # Problem

# # Given a sequence of non-negative integers a0,…,an−1, find the maximum pairwise product, that is, the largest integer that can be obtained by multiplying two different elements from the sequence (or, more formally, max0≤i≠j≤n−1aiaj). Different elements here mean ai and aj with i≠j (it can be the case that ai=aj).
# # p 'enter first number'

# max_number = gets.chomp.to_i

# # p 'enter numbers separated by spaces'

# stringValues = gets.chomp.split(' ')

# intValues = []
# stringValues.map{|v| intValues.push(Integer(v, 10)) }

# # p intValues


def maxPairwise nums
	n = nums.length
	result = 0
	for i in (0...n)
		j = 0
		loop do
			j += 1
			break if j == n
			product = nums[i] * nums[j]
			if product > result && nums[i] != nums[j]
				result = product
			end
			
		end
	end
	result
end

def maxPairwiseFast nums

	n = nums.length

	max_index1 = -1
	for i in (0...n)
		if max_index1 == -1 || nums[i] > nums[max_index1]
			max_index1 = i
		end
	end

	max_index2 = -1
	for j in (0...n)
		if j != max_index1 && (max_index2 == -1 || nums[j] > nums[max_index2])
			max_index2 = j
		end
	end

	return nums[max_index2] * nums[max_index1]
	# p Benchmark.measure{nums[max_index2] * nums[max_index1]}
end

def main 
	# while true
	# 	n = rand(2..1000)
	# 	str = ''
	# 	p n
	# 	arr = []
	# 	for i in 0...n
	# 		arr.push rand(0..100000)
	# 	end
	# 	for i in 0...n
	# 		str << arr[i].to_s << " "
	# 	end
	# 	p str
	# 	result1 = maxPairwise arr	
	# 	result2 = maxPairwiseFast arr

	# 	if result2 != result1
	# 		p "Wrong answer: " << result1.to_s << " " << result2.to_s
	# 		break
	# 	else
	# 		p 'OK'
	# 	end
	# end


	n = gets.chomp.to_i

	stringValues = gets.chomp.split(' ')

	intValues = []
	stringValues.map{|v| intValues.push(Integer(v, 10)) }

	p maxPairwiseFast intValues
end

main()