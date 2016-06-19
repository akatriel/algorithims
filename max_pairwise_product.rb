# Problem

# Given a sequence of non-negative integers a0,…,an−1, find the maximum pairwise product, that is, the largest integer that can be obtained by multiplying two different elements from the sequence (or, more formally, max0≤i≠j≤n−1aiaj). Different elements here mean ai and aj with i≠j (it can be the case that ai=aj).
p 'enter first number'

max_number = gets.chomp.to_i

p 'enter numbers separated by spaces'

stringValues = gets.chomp.split(' ')

intValues = []
stringValues.map{|v| intValues.push(Integer(v, 10)) }

p intValues


def maxPairwise nums
	n = nums.length
	result = 0
	for i in (0...n)
		j = 0
		loop do
			j += 1
			break if j == n
			if nums[i] * nums[j] > result && nums[i] != nums[j]
				result = nums[i] * nums[j]
			end
			
		end
	end
	p result
end

maxPairwise intValues