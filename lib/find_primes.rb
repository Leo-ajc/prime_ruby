class FindPrimes
  def initialize
    @cached_primes = [2, 3, 5, 7]
    @max_checked = @cached_primes.last + 1
  end

  def first_n_primes(n)
    segmented_sieve_of_eratosthenes while @cached_primes.size <= n
    @cached_primes[0..(n-1)]
  end

  def segmented_sieve_of_eratosthenes
    # max_segment_size must be an even number
    max_segment_size = 1_000_000
    max_cached_prime = @cached_primes.last

    segment_min = @max_checked
    segment_max = [segment_min + max_segment_size, max_cached_prime * 2].min
    root = Integer(Math.sqrt(segment_max).floor)

    #removing all even numbers
    segment = ((segment_min + 1) .. segment_max).step(2).to_a

    (1..Float::INFINITY).each do |sieving|
      prime = @cached_primes[sieving]
      break if prime > root
      composite_index = (-(segment_min + 1 + prime) / 2) % prime
      while composite_index < segment.size do
        segment[composite_index] = nil
        composite_index += prime
      end
    end

    @cached_primes.concat(segment.compact!)

    @max_checked = segment_max
  end
end