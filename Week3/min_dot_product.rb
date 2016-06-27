def dot_product n, a, b
	product = 0
	i = 0
	until i == n 
		product = product + a[i] * b[i]
		i = i + 1
	end
	product
end

n  = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}.sort
b = gets.chomp.split(' ').map{|i| i.to_i}.sort.reverse
p dot_product n, a, b