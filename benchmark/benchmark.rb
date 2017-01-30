require 'benchmark'
require 'rubygems'
require 'bundler/setup'
Bundler.require
require './lib/find_primes'

Benchmark.bm do |x|
  (10..10000).step(10).each do |n|
    x.report(n) { FindPrimes.new.first_n_primes(n) }
  end
end