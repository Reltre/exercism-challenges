#Sieve of Eratosthenes Implementation: I'm thinking of utilizing an 
#incremental sieve in my next iteration. I only know the upper bound to check
#here thanks to the minitest provided.
class Prime
  def self.nth(nth_prime)
    if !(nth_prime.is_a? Numeric) || nth_prime < 1 
      raise ArgumentError, "That is not a valid input"
    end
    primes = *(3...200_000)
    primes.delete_if {|elm| elm % 2 == 0}
    primes.each do |i|
      primes.delete_if do |elm| 
        next if elm == i
        elm % i == 0
      end
    end
    primes.unshift(2)
    primes[nth_prime - 1]
  end  
end
