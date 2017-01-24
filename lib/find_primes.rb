class FindPrimes

  def initialize
    @cached_primes = [2,3,5,7,11]
  end

  def find_primes(n)
    [2,3,5,7,11]
  end

  def upto_sieve(low,high)
    sieve = []
    for i in 2 .. high
      sieve[i] = i
    end
    for i in 2 .. Math.sqrt(high)
      next unless sieve[i]
      (i*i).step(high, i) do |j|
        sieve[j] = nil
      end
    end
    sieve = sieve[(low-1)..(high-2)]
    sieve.compact
  end

end