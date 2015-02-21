def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	total = 0
	array.each do |n|
		total += n
	end
	return total
end

def multiply(array)
	total = 1
	array.each do |n|
	total *= n
	end
	return total
end

def power(base,n)
	return base**n
end

def fact(n)
	if (n <= 1)
		return 1
	end
	
	base = 1
	loop do
		base *= n
		n -= 1
		break if n <= 1
	end
	return base
end