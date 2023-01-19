require './utils'

class RuleWay
  def self.process(word)
    first = word.strip
    
    # handle punctuations if the word has punctuations
    puncs_first_idx, punctuations = Utils.get_punctuations_with_first_idx(word)
    first = word[0...puncs_first_idx] if puncs_first_idx != -1

    first + addition(word) + punctuations
    
  end

  def self.addition(word)
    return 'WAY' if Utils.upcase_whole_word?(word)

    'way'
  end
end
