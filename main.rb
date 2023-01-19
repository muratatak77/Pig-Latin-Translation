require './engine'

def translate(input)
  Engine.new(input)
end

def translate_all_cases
  input = ['hello', 'eat', 'yellow', 'eat world', 'Hello', 'Apples', 'eat... world?!', 'school', 'quick',
           "she's great!", 'HELLO', 'Hello There']
  Engine.new(input).to_s
end

def translate_way_cases
  Engine.new('Apples').to_s
  Engine.new('ELLO').to_s
end

def translate_ay_cases
  Engine.new('hello').to_s
  Engine.new('Hello').to_s
end

def translate_qu_cases
  Engine.new('quick').to_s
  Engine.new('quiet').to_s
  Engine.new('squiet').to_s
end

def translate_multiple_word_cases
  Engine.new('Hello There').to_s
  Engine.new('eat world').to_s
  Engine.new('Ello Eat').to_s
  Engine.new('the quick brown fox').to_s
end

def translate_with_punctuations
  Engine.new("she's great!").to_s
  Engine.new('tea... world?!').to_s
  Engine.new('t.!ea... world?!').to_s
end

translate_all_cases
translate_way_cases
translate_qu_cases
translate_multiple_word_cases
translate_with_punctuations
