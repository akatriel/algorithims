# Task. The goal of this code problem is to implement an algorithm for the fractional knapsack problem.

# Input Format. The first line of the input contains the number n of items and the capacity W of a knapsack. 

#The next n lines define the values and weights of the items. 

#The i-th line contain integers vi and wi — the value and the weight of i-th item, respectively.

# Constraints. 1≤n≤103,0≤W ≤2·106;0≤vi ≤2·106,0<wi ≤2·106 forall1≤i≤n. Allthe numbers are integers.

# Output Format. Output the maximal value of fractions of items that fit into the knapsack. The absolute value of the difference between the answer of your program and the optimal value should be at most 10−3. To ensure this, output your answer with at least four digits after the decimal point (otherwise your answer, while being computed correctly, can turn out to be wrong because of rounding issues).


def fractionalKnapsack n, capacity, items
	knapsack = []
	kValue = 0 #value of items in knapsack
	w = capacity
	# sort items by best vpw
	items = items.sort_by{ |item| item[0] / item[1] }.reverse

	items.each do |item|
		break if w == 0
		value = item[0]
		weight = item[1]

		if weight <= w
			knapsack.push item
			kValue = kValue + value
			w = w - weight
		else
			value = (w * value / weight)

			kValue = kValue + value
			knapsack.push [value, w]
			w = 0
		end
	end
	kValue.round(4)
end

input = []
$stdin.each_line do |line|
	break if line.chomp == ''
	input.push line.chomp
end

line0 = input.shift
line0 = line0.split(' ')
n = line0[0].to_f
capacity = line0[1].to_f
items = []

input.each do |line|
	line = line.split(' ').map{|i| i.to_f}
	items.push line
end

p fractionalKnapsack n, capacity, items