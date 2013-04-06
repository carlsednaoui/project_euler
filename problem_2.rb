# Create the sequence
sequence = [1,2]

while true
  sum_of_last_two_numbers = sequence[-1] + sequence[-2]
  break if sum_of_last_two_numbers > 4_000_000
  sequence.push(sum_of_last_two_numbers)
end 

# Find even terms
puts sequence.reduce(0){ |sum, el| el % 2 == 0 ? sum + el : sum }

# # Old code
# even_terms = []
# sequence.each do |i|
#   even_terms.push(i) if i % 2 == 0
# end

# puts even_terms.inject{ |sum, el| sum + el }