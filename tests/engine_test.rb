require 'test/unit'
require './engine'

class EngineTest < Test::Unit::TestCase
  def test_for_rule_way_letters
    assert_equal(Engine.new('eat').result.join(' '), 'eatway')
    assert_equal(Engine.new('Apples').result.join(' '), 'Applesway')
    assert_equal(Engine.new('ELLO').result.join(' '), 'ELLOWAY')
  end

  def test_for_rule_ay_letters
    assert_equal(Engine.new('hello').result.join(' '), 'ellohay')
    assert_equal(Engine.new('Hello').result.join(' '), 'Ellohay')
    assert_equal(Engine.new('school').result.join(' '), 'oolschay')
    assert_equal(Engine.new('HELLO').result.join(' '), 'ELLOHAY')
  end

  def test_for_rule_qu_letters
    assert_equal(Engine.new('quick').result.join(' '), 'ickquay')
    assert_equal(Engine.new('quiet').result.join(' '), 'ietquay')
    assert_equal(Engine.new('squiet').result.join(' '), 'ietsquay')
  end

  def test_for_rule_multiple_words_letters
    assert_equal(Engine.new('Hello There').result.join(' '), 'Ellohay Erethay')
    assert_equal(Engine.new('eat world').result.join(' '), 'eatway orldway')
    assert_equal(Engine.new('Ello Eat').result.join(' '), 'Elloway Eatway')
    assert_equal(Engine.new('the quick brown fox').result.join(' '), 'ethay ickquay ownbray oxfay')
  end

  def test_for_with_punctuation
    assert_equal(Engine.new("she's great!").result.join(' '), "e'sshay eatgray!")
    assert_equal(Engine.new('tea... world?!').result.join(' '), 'eatay... orldway?!')
    assert_equal(Engine.new('t.!ea... world?!').result.join(' '), 'eat.!ay... orldway?!')
    assert_equal(Engine.new('eat?!').result.join(' '), 'eatway?!')
    assert_equal(Engine.new('eat... world?!').result.join(' '), 'eatway... orldway?!')
  end

  def test_w_suffix
    assert_equal(Engine.new('yellow').result.join(' '), 'yellowway')
    assert_equal(Engine.new('yellow?!').result.join(' '), 'yellowway?!')
  end
end
