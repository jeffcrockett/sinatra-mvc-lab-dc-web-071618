class PigLatinizer 
    attr_accessor :text

    def piglatinize(text)
        text.gsub(/\.+/, '').split(' ')
            .map {|word| 
                if word.match(/^[^aeiou]+/i)
                    first_consonants = word.scan(/^[^aeiou]+/)[0]
                    "#{word[first_consonants.length..-1]}#{word[0..first_consonants.length-1]}ay"
                else
                    "#{word}way"
                end
            }.join(' ')
    end


end