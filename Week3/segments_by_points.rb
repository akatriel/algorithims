# The first line of the input contains the number n of segments. Each of the following n lines contains two integers ai and bi (separated by a space) defining the coordinates of endpoints of the i-th segment.
# Output the minimum number m of points on the first line and the integer coordinates of m points (separated by spaces) on the second line. You can output the points in any order. If there are many such sets of points, you can output any set. (It is not difficult to see that there always exist a set of points of the minimum size such that all the coordinates of the points are integers.)
def segmentsByPoints n, segments
	set = []
	i = 0
	leftRangeMax = 0
	while i < n
		leftRange = segments[i][0]..segments[i][1]
		unless segments[i + 1].nil?
			nextSegment = segments[i + 1]
			nextRange = nextSegment[0]..nextSegment[1]
			
				if leftRange.first <= nextRange.last and nextRange.first <= leftRange.last and !nextRange.cover? leftRangeMax
					leftRange.max.downto leftRange.min do |point|
						if nextRange === point 
							set << point
							break
						end
					end
				end
			leftRangeMax = leftRange.max
		end
		i += 1
	end
	p set.length
	set.map{|s| p s}
end

input = []
$stdin.each_line do |line|
	break if line.chomp == ''
	input << line.split(' ').map{|i| i.to_i}
end

n = input.shift.first

input = input.sort
segmentsByPoints n, input
