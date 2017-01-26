require 'spec_helper'

describe FindPrimes do

  let(:prime_obj) { FindPrimes.new }

  describe '#find_primes' do
    it "It returns the first n primes in an array" do
      expect(prime_obj.first_n_primes(5)).to eq [2,3,5,7,11]
    end
  end

end