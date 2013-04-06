number = 600851475143

# Version 1
# @chain = []

# def is_prime?(n)
#   (2..n-1).each do |i|
#     return n % i == 0 ? false : true
#   end
# end

# def get_primes(n)
#   (2..n).each do |i|
#     if is_prime?(i) && (n % i == 0)
#       @chain.push(i)
#       get_primes(n / i)
#       break
#     end
#   end
# end

# get_primes(number)
# puts @chain.last

# Version 2
def get_prime(n)
  (2..n).each do |i|
    if i == n
      return n
    elsif n % i == 0
      return get_prime(n/i)
    end
  end
end

puts get_prime(number)

# Version 3
# require 'prime'
# puts number.prime_division.inspect