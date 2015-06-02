require 'minitest/autorun'
require 'minitest/pride'
require_relative 'counting_characters'


class CharactersTest < Minitest::Test

  def test_returns_0_for_empty_string
    assert_equal 0, Counter.new.count("")
  end

  def has_sort_method
    assert Counter.new, respond_to?(sorter)
  end

  def sort_method_returns_sorted_array
    assert_equal [0,1,4,10], Counter.new.sort([10,4,0,1])
  end

  def has_hash_method
    assert Counter.new, respond_to?(hashify)
  end

  def test_word_duplicates
    assert_equal "t: 2\ne: 1\ns: 1", Counter.new.count("test")
  end

  def test_word_has_no_duplicates
    assert_equal "e: 1\np: 1\no: 1\nn: 1", Counter.new.count("nope")
  end

  def test_word_all_duplicates
    assert_equal "m: 5", Counter.new.count("mmmmm")
  end


end