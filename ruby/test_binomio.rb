require 'test/unit'
require_relative 'binomio'

class TestBinomio < Test::Unit::TestCase

  def test_factorial
    assert_equal 24, Binomio.new.factorial(4)
    assert_equal 120, Binomio.new.factorial(5)
    assert_equal 720, Binomio.new.factorial(6)
  end

  def test_combinacao
    assert_equal 1, Binomio.new.combinacao(3, 0)
    assert_equal 3, Binomio.new.combinacao(3, 1)
    assert_equal 3, Binomio.new.combinacao(3, 2)
    assert_equal 1, Binomio.new.combinacao(3, 3)

    assert_equal 1, Binomio.new.combinacao(4, 0)
    assert_equal 4, Binomio.new.combinacao(4, 1)
    assert_equal 6, Binomio.new.combinacao(4, 2)
    assert_equal 4, Binomio.new.combinacao(4, 3)
    assert_equal 1, Binomio.new.combinacao(4, 4)
  end

  def test_binomio
    assert_equal 216, Binomio.new.binomio(2,4,3)
  end

end
