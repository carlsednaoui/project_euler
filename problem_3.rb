# Elegan implementation: http://justintallant.com/project-euler-problem-3-in-ruby/?doing_wp_cron=1365246459.5397760868072509765625

integer = 600851475143

@prime_numbers = []

def get_primes(integer)
  (2..integer).each do |i|
    if integer % i == 0
      @prime_numbers.push(i)
      break if (@prime_numbers.reduce(1){ |sum, el| sum * el } == integer)
    end
  end
end

get_primes(integer)
puts @prime_numbers