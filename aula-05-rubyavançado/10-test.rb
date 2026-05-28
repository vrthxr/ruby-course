require 'minitest/autorun'

# def sum (a, b)
#   a + b 
# end

def palindromo?(palavra)
  palavra.downcase == palavra.downcase.reverse
end



# class TestMath < Minitest::Test
#     def test_sum_method
#       assert_equal(5, sum(3, 2))
#     end
#     def test_sum_method
#       assert_equal(7, sum(4, 2))
#     end
# end


class TestPalindromo < Minitest::Test
  def test_palindromo
    assert_equal(true, palindromo?('ovo'))
    assert_equal(true, palindromo?('Ame a ema'))
    assert_equal(true, palindromo?('natan'))
    assert_equal(false, palindromo?('ola'))
  end
end