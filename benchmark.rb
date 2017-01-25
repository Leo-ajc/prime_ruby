require 'benchmark'
require './lib/find_primes'

Benchmark.bm do |x|
  (10..10000).step(10).each do |n|
    x.report(n) { FindPrimes.new.find_primes(n) }
  end
end