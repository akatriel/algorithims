# Problem

# Given a sequence of non-negative integers a0,…,an−1, find the maximum pairwise product, that is, the largest integer that can be obtained by multiplying two different elements from the sequence (or, more formally, max0≤i≠j≤n−1aiaj). Different elements here mean ai and aj with i≠j (it can be the case that ai=aj).
# p 'enter first number'
require 'benchmark'
max_number = gets.chomp.to_i

# p 'enter numbers separated by spaces'

stringValues = gets.chomp.split(' ')

intValues = []
stringValues.map{|v| intValues.push(Integer(v, 10)) }

# p intValues


def maxPairwise nums

	n = nums.length

	max_index1 = -1
	for i in (0...n)
		if max_index1 == -1 || nums[i] > nums[max_index1]
			max_index1 = i
		end
	end

	max_index2 = -1
	for j in (0...n)
		if nums[j]!= nums[max_index1] && (max_index2 == -1 || nums[j] > nums[max_index2])
			max_index2 = j
		end
	end

	# p nums[max_index2] * nums[max_index1]
	p Benchmark.measure{nums[max_index2] * nums[max_index1]}
end

maxPairwise intValues	