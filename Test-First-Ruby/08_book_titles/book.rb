class Book

	def title
		@title
	end

	def title=(s)
		lowerwords = ['a', 'an', 'and', 'the', 'in', 'of']
		words = s.split.map do |word|
			if (lowerwords.include?(word))
				word
			else
				word.capitalize
			end
		end

		words[0].capitalize!
		@title = words.join(" ")
	end

end


