require 'minitest/autorun'


class Calculator

  def sum(num1, num2)
    num1 + num2
  end

  def sub(num1, num2)
    num1 - num2
  end

  def div(num1, num2)
    num1 / num2
  end

  def mult(num1, num2)
    num1 * num2
  end

end

class TestCalculator < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_sum_method
    result = @calc.sum(-5,-3)
    assert_equal(-8, result, "Falha no cálculo")
  end

  def test_div_method
    result = @calc.div(10,2)
    assert_equal(5, result, "Falha no cálculo")
  end

  def test_div_zero_method
    assert_raises(ZeroDivisionError, "Não está gerando uma exceção ao dividir por zero") do
      @calc.div(10,0)
    end
  end

  def test_sub_method
    result = @calc.sub(12,2)
    assert_equal(10, result, "Falha no cálculo")
  end

  def test_sub_with_negatives
    result = @calc.sub(5,-3)
    assert_equal(8, result, "Falha no cálculo")
  end


  def test_mult_method
    result = @calc.mult(5,5)
    assert_equal(25, result, "Falha no cálculo")
  end

end