def translate(word)

	word.split.map do |w|
		i = firstvowel(w) ## Find the index of first vowel appears in the word

		if hasqu(w)
			slicequ(w)
		elsif i == 0
			w + "ay"
		else
			w + w.slice!(0..i-1) + "ay"
		end
	end.join(' ')

end



def firstvowel(word) ## return the index of first vowel appears in the word
	vowel = ['a', 'e', 'i', 'o', 'u']

	word.split("").each do |i|
		if vowel.include?(i)
			return word.index(i)
		end
	end
end

def hasqu(word)
	if word.include?("qu")
		true
	else
		false
	end
end

def slicequ(word)
	quindex = word.index("qu")
	return word + word.slice!(0..quindex+1) + "ay"
end