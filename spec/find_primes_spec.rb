require 'spec_helper'

describe FindPrimes do

  describe '#find_primes' do
    it "It returns the first n primes in an array" do
      expect(FindPrimes.find_primes(5)).to eq [2,3,5,7,11]
    end

    it "upto limit" do
      expect(FindPrimes.upto_sieve(5)).to eq [2,3,5,7,11]
    end
  end

end