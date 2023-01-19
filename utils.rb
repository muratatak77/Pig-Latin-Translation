require './constant'

class Utils
  class << self
  
    def upcase_whole_word?(word)
      word == word.upcase
    end

    def upcase_only_first_word?(word)
      word[0] == word[0].upcase && !upcase_whole_word?(word)
    end

    def include_vowels?(char)
      Constant::VOWELS.include?(char)
    end

    def get_punctuations_with_first_idx(second)
      first_idx = -1
      punctuations = []
      for i in (second.length - 1).downto(0)
        break unless Constant::PUNCTUATIONS.include?(second[i])

        first_idx = i
        punctuations << second[i].to_s

      end

      [first_idx, punctuations.reverse!.join('')]
    end

    def suffix_includes_w?(word)
      temp = word.downcase.gsub(/[^a-z0-9\s]/i, '')
      /[wW]/.match(temp[-1])
    end
  end
end
