require './utils'

class RuleAy
  class << self
    def process(word)
      @word = word.strip
      first_vowel_char = find_first_vowel_char
      idx = @word.index(first_vowel_char)
      return @word unless idx

      # handle qu case
      idx += 1 if include_with_qu?(idx)

      first = @word[0...idx]
      second = @word[idx..-1]

      # handle upcase and downcase
      if Utils.upcase_only_first_word?(@word)
        second[0] = second[0].upcase
        first[0] = first[0].downcase
      end

      # handle and reload second part if second part has punctuations
      second = reload_second_and_check_is_punctuations(second)
      second + first + addition + @punctuations
    end

    private

    # reload for second part if it has punctuations
    def reload_second_and_check_is_punctuations(second)
      puncs_first_idx, @punctuations = Utils.get_punctuations_with_first_idx(second)
      second = second[0..puncs_first_idx - 1] if puncs_first_idx != -1
      second
    end

    def include_with_qu?(idx)
      idx > 0 && @word[idx] == 'u' && @word[idx - 1] == 'q'
    end

    # sending additon chars for AY case
    def addition
      return 'AY' if Utils.upcase_whole_word?(@word)

      'ay'
    end

    def find_first_vowel_char
      characters.find { |char| Utils.include_vowels?(char) }
    end

    def characters
      @word.chars
    end
  end
end
