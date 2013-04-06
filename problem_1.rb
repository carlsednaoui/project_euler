numbers = []

(1...1000).each do |i|
  if (i % 3 == 0) || (i % 5 ==0)
    numbers.push(i)
  end
end

# sum all the numebrs up
puts numbers.inject{ |sum, el| sum + el }
