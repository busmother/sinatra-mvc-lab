require 'pry'

class PigLatinizer
    attr_reader :text

    # def initialize(text="this is a default")
    #     @text = text.downcase
    #     a = @text.split(" ")
    #     b = a.map {|word| piglatinize_word(word)}
    #     b.join(" ")
    # end

    def piglatinize(phrase)
        array = phrase.split(" ")
        array.map {|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        # binding.pry
        if word.downcase.match(/^[aeiou]/)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

end