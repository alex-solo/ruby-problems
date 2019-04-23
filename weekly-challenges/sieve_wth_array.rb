# To find all the prime numbers less than or equal to a given integer n by Eratosthenes' method:

# Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# Initially, let p equal 2, the smallest prime number.
# Enumerate the multiples of p by counting to n from 2p in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself should not be marked).
# Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
# When the algorithm terminates, the numbers remaining not marked in the list are all the primes below n.

class Sieve
  attr_accessor :range
  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    (2..Math.sqrt(@limit)).each do |a|
      self.range = range.reject do |n|
        n > a && n % a == 0
      end
    end
    range
  end
end

sieve = Sieve.new(100)

p sieve.primes
