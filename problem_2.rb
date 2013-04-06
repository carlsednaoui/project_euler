# Create the sequence
sequence = [1,2]

while true
  sum_of_last_two_numbers = sequence[-1] + sequence[-2]
  if sum_of_last_two_numbers < 4_000_000
    sequence.push(sum_of_last_two_numbers)
  else
    break
  end
end 

# Find even terms
even_terms = []
sequence.each do |i|
  even_terms.push(i) if i % 2 == 0
end

puts even_terms.inject{ |sum, el| sum + el }