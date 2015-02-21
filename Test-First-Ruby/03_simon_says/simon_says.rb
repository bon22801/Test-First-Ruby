def echo(word)
	return word
end

def shout(word)
	return word.upcase
end


def repeat(*args)
	if args.size == 1
		return repeat1(*args)
	end
	if args.size == 2
		return repeat2(*args)
	end
	return ""
end

def repeat1(word)
	return word + " " + word
end

def repeat2 (word, n)
	result = word
	(n-1).times do
		result = result + " " + word
	end
	return result
end

def start_of_word (word, n)
	return word[0,n]
end

def first_word (str)
	i = str.index(" ")
	return str[0,i]
end

def titleize (str)
	words = str.split.map do |w|
		if (w.eql?("and") || w.eql?("over") || w.eql?("the"))
			w
		else
			w.capitalize 
		end
	end
	words.first.capitalize!
	words.join(" ")
end
