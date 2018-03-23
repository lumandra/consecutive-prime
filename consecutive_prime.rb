require 'mathn'

class ConsecutivePrime

  attr_accessor :limit, :terms, :primes_sum

  def initialize(limit)
    @limit = limit
    @terms, @primes_sum = 0, 0

    perform
  end

  private

  def perform
    primes = get_primes limit
    t_start = Time.now
    upper = primes.length - 1
    ctr, sum = 0, 0

    0.upto(upper) do |s|
      sum, ctr = primes[s], 1
      (s+1).upto(upper) do |e|
        sum += primes[e]
        break if sum > @limit
        ctr += 1
        next if ctr < @terms
        if sum.prime? && ctr > @terms
          @terms, @primes_sum = ctr, sum
        end
      end
    end

    puts "Primes sum: #{@primes_sum}"
    puts "Terms: #{@terms}"
    puts "Performed Time: #{(Time.now - t_start)*1000} ms"
  end

  def get_primes (limit)
    primes = []
    Prime.each do |a|
      break if a > limit
      primes << a
    end
    primes
  end

end