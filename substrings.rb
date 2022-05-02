def substrings (word, dictionary)
    new_hash = Hash.new(0)
    word_arr = word.downcase.split()
    dictionary.each do |entry|
        word_arr.each do |item|
            if item.include?(entry)
                new_hash[entry] += 1
            end
        end
    end
    p new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

substrings(word,dictionary)
