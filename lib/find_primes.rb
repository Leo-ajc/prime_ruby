class FindPrimes

  def initialize
    #@cached_primes = [2,3,5,7,11]
  end

  def find_primes(n)
    upto_sieve(0,n)
  end

  #def sieve_of_eratosthenes(n)
    #https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Pseudocode
    #Input: an integer n > 1
    #return false unless n > 1
    #
    #Let A be an array of Boolean values, indexed by integers 2 to n,
    #  initially all set to true.
    #a = (2..n).to_a
    #a[0] = a[1] = nil
    #a = [nil, nil, *2..n]
    #
    #  for i = 2, 3, 4, ..., not exceeding √n:
   # 2.upto(Math.sqrt(n)) do |i|
    # if A[i] is true:
  #    if a[i]
   #     puts i
    # for j = i^2, i^2+i, i^2+2i, i^2+3i, ..., not exceeding n :
        #((i*i)..n).step(i) do |j|
  #      (i**2..n).step(i) do |j|
    # A[j] := false
  #        puts j
  #        a[j] = nil
  #      end
  #    end
  #  end
    #Output: all i such that A[i] is true.
  #  a.compact
  #end

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