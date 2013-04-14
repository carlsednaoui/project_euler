start_time = Time.now

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end

def get_largest_palindrom(user_number)
  row = user_number
  limit = nil
  palindrome = nil
  @count = 0

  (1..row).to_a.reverse.each do |row_number|
    ((limit || row_number)..row).to_a.reverse.each do |column_number|
      product = row_number * column_number
      
      if !!palindrome && (product < palindrome)
        return palindrome if limit == column_number

        limit = column_number
        break
      elsif is_palindrome?(product)
        palindrome = product
        limit = column_number

        print column_number * row_number
        print " -- " + column_number.to_s + " : " + row_number.to_s
        print " -- " + is_palindrome?(column_number * row_number).to_s + "\n"
        break
      end
      @count += 1
    end
    @count += 1
  end
end

puts get_largest_palindrom(999)
puts @count

end_time = Time.now
puts "Time elapsed #{((end_time - start_time)*1000).round(2)} milliseconds."

# Original implementation
# start_time = Time.now

# palindromes = []

# (1..999).each do |y|
#   (y..999).each do |z|
#     if (y * z).to_s == (y * z).to_s.reverse
#       palindromes.push(y * z)
#     end
#   end
# end

# puts palindromes.max

# end_time = Time.now
# puts "Time elapsed #{((end_time - start_time)*1000).round(2)} milliseconds."