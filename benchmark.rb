require 'benchmark'
require './lib/find_primes'

Benchmark.bm do |x|
  (10..10000).step(10).each do |n|
    x.report(n) { FindPrimes.new.upto_sieve(n) }
  end
end