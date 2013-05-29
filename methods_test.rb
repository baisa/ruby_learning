require "minitest/autorun"
require "./methods"

class TestMethods < Minitest::Unit::TestCase

  def test_my_split
    result = my_split("Rawls", "w")    
    assert_equal ["Ra","ls"], result

    result = my_split("Rawls eats a hamburger.", " ")
    assert_equal ["Rawls","eats","a","hamburger."], result

    result = my_split("Rawls", "d")    
    assert_equal ["Rawls"], result

  end

  def test_my_join
    result = my_join(["Ra","ls"],"w")    
    assert_equal "Rawls", result

    result = my_join(["Rawls","eats","a","hamburger."], " ")
    assert_equal "Rawls eats a hamburger.", result
  end

  def test_my_sum
    result = my_sum([1,2,3])
    assert_equal 6, result

    result = my_sum([])
    assert_equal nil, result
  end

  def test_my_product
    result = my_product([1,2,3])
    assert_equal 6, result

    result = my_product([])
    assert_equal nil, result

    result = my_product([3,6,9])
    assert_equal 162, result
  end

  def test_multiply_all_by
    result = multiply_all_by([1,2,3], 3)
    assert_equal [3,6,9], result

    result = multiply_all_by([4,1,6], 2)
    assert_equal [8,2,12], result
  end

  def test_add_to_all
    result = add_to_all([1,2,3], 3)
    assert_equal [4,5,6], result

    result = add_to_all([4,1,6], 2)
    assert_equal [6,3,8], result
  end

  def test_my_map
    result = my_map([1,2,3]) { |elem| elem * 3 }
    assert_equal [3,6,9], result


    result = my_map([1,2,3]) { |elem| elem * 3 }
    assert_equal [3,6,9], result    
  end
end

