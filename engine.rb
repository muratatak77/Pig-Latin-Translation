require './utils'
require './rule_way'
require './rule_ay'
require './rule_w_suffix'
require './constant'

class Engine
  attr_accessor :input, :result

  def initialize(input)
    @input = input
    @result = []
    piglatinize
  end

  def piglatinize
    parts.each do |words|
      words.split(' ').each do |word|
        result << if Utils.include_vowels?(word[0])
                    RuleWay.process(word)
                  elsif Utils.suffix_includes_w?(word)
                    RuleWSuffix.process(word)
                  else
                    RuleAy.process(word)
                  end
      end
    end
  end

  def to_s
    puts '------------------------------------'
    if input.instance_of? Array
      puts "Input : #{input}"
      puts "Result : #{result.join(' ')}"
    elsif input.instance_of? String
      puts "#{input} > #{result.join(' ')}"
    end
  end

  private

  def parts
    if input.instance_of? Array
      return input if input.instance_of? Array
    elsif input.instance_of? String
      input.split(' ')
    end
  end
end
