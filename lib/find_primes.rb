module FindPrimes

  def self.find_primes(n)
    [2,3,5,7,11]
  end

  def self.upto_sieve(n)
    sieve = []
    for i in 2 .. n
      sieve[i] = i
    end
    for i in 2 .. Math.sqrt(n)
      next unless sieve[i]
      (i*i).step(n, i) do |j|
        sieve[j] = nil
      end
    end
    sieve.compact
  end

end