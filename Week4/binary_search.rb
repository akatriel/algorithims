# The rst line of the input contains an integer n and a sequence a0 < a1 < : : : < an􀀀1 of
# n pairwise distinct positive integers in increasing order. The next line contains an integer k and k
# positive integers b0; b1; : : : ; bk􀀀1.


def binarySearch( arr, t,low=0, high=nil)
  if high.nil?
    high = arr.size - 1
  end  
 
   mid = (low + high ) / 2
   return -1 if low > high || arr[mid].nil?
	if arr[mid] > t
		binarySearch arr, t, 0, mid - 1
	elsif arr[mid] < t
		binarySearch arr, t, mid + 1, high
	else
		mid
	end
end



input = []
ARGF.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{|i| i.to_i}
end
n = input[0].shift
k = input[1].shift

input[1].each do |o|
	p binarySearch input[0], o, 0, input[1].length unless 0.nil?
end