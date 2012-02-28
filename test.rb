text = %q{Los Angeles has some of the nicest weather in the country.}
stopwords = %w{the a by on of are with just but and for to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }

puts keywords.join(' ')

puts "#{((keywords.length.to_f/words.length.to_f)*100).to_i}% keywords"