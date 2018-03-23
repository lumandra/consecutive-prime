require_relative 'consecutive_prime'
require "test/unit"

class ConsecutivePrimeTests < Test::Unit::TestCase

  def setup
    @sum_primes_for = {hundred: 41, thousand: 953, ten_thousand: 9521, million: 997651}
    @terms_count_for = {hundred: 6, thousand: 21, ten_thousand: 65, million: 543}

    @test_hundred = ConsecutivePrime.new(100)
    @test_thousand = ConsecutivePrime.new(1000)
    @test_ten_thousand = ConsecutivePrime.new(10000)
    @test_million = ConsecutivePrime.new(1000000)
  end

  def test_values

    assert_equal(@sum_primes_for[:hundred], @test_hundred.primes_sum)
    assert_equal(@terms_count_for[:hundred], @test_hundred.terms)

    assert_equal(@sum_primes_for[:thousand], @test_thousand.primes_sum)
    assert_equal(@terms_count_for[:thousand], @test_thousand.terms)

    assert_equal(@sum_primes_for[:ten_thousand], @test_ten_thousand.primes_sum)
    assert_equal(@terms_count_for[:ten_thousand], @test_ten_thousand.terms)

    assert_equal(@sum_primes_for[:million], @test_million.primes_sum)
    assert_equal(@terms_count_for[:million], @test_million.terms)

  end
end