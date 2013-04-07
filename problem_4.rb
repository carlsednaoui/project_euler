start_time = Time.now

palindromes = []

(1..999).to_a.reverse.each do |y|
  (1..999).to_a.reverse.each do |z|
    if (y * z).to_s == (y * z).to_s.reverse
      palindromes.push(y * z)
    end
  end
end

puts palindromes.max

end_time = Time.now
puts "Time elapsed #{((end_time - start_time)*1000).round(2)} milliseconds."
