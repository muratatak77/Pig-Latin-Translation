require './utils'

class RuleWSuffix
  class << self
    def process(word)
      @word = word.strip
      first = @word

      # handle punctuations if the word has punctuations
      puncs_first_idx, punctuations = Utils.get_punctuations_with_first_idx(@word)
      first = first[0..puncs_first_idx - 1] if puncs_first_idx != -1

      first + addition + punctuations
    end

    private

    def addition
      return 'WAY' if Utils.upcase_whole_word?(@word)

      'way'
    end
  end
end
