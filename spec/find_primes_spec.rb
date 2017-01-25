require 'spec_helper'

describe FindPrimes do

  let(:prime_obj) { FindPrimes.new }

  describe '#find_primes' do
    it "It returns the first n primes in an array" do
      expect(prime_obj.find_primes(8)).to eq [2,3,5,7,11,13,17,19]
    end

    it "#upto limit" do
      binding.pry
      expect(prime_obj.upto_sieve(5,20)).to eq [5,7,11,13,17]
    end
  end

end