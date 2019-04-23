# To find all the prime numbers less than or equal to a given integer n by Eratosthenes' method:

# Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# Initially, let p equal 2, the smallest prime number.
# Enumerate the multiples of p by counting to n from 2p in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ...; the p itself should not be marked).
# Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.
# When the algorithm terminates, the numbers remaining not marked in the list are all the primes below n.

# range (2..10) => create hash ex. {2 => '', 3 => 'X'}
# p = 2

# first step: iterate through this hash and mark all multiples of p
#p = 2
    #loop
    #iterate through @range, marking 2p, 3p, 4p with 'X'
    #set p = hash.find {|k, v| k > 2 && v == ''}[0]
      # if nil return hash.keys
    #end

class Sieve
  UNMARKED = ''
  MARKED = 'X'

  def initialize(limit)
    @limit = limit
    @range = create_range
  end

  def create_range
    hash = {}
    (2..@limit).each { |num| hash[num] = UNMARKED}
    hash
  end

  def primes
    prime = 2
    loop do
      @range.each do |k,_|
        @range[k] = MARKED if k % prime == 0 && k != prime
      end
      next_prime = @range.find { |k, v| k > prime && v == UNMARKED }
      break if next_prime.nil? 
      prime = next_prime[0]
    end
    @range.select { |_, v| v == UNMARKED }.keys
  end

end
