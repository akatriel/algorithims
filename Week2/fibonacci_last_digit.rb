# require 'benchmark'
def fibList n
	arr = *(0...n)
	arr[0] = 0
	arr[1] = 1
	for i in 2..n
		arr[i] = (arr[i - 1] + arr[i - 2]) % 10
	end
	return arr[n].to_s.split('').last.to_i
end

n = gets.chomp.to_i
p fibList n
# p Benchmark.measure{p fibList n}