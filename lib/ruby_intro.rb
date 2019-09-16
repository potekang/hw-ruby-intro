# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else 
    arr.inject(:+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    ans = arr.sort
    #puts arr
    #puts "------------"
    return ans[-1] + ans[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  elsif arr.length ==  1
    return false
  else
    for i in 0..arr.length - 2
      for j in i + 1..arr.length - 1
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
   return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+ name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[A-Za-z&&[^AEIOUaeiou]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #puts s
  if s =~ /\A[01]+00\z/x or s == '0'
    #puts s
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    if isbn.empty?
      raise ArgumentError.new('Damn, wrong isbn')
    elsif price <= 0
      raise ArgumentError.new('Look at the price! Are you kidding me?')
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    puts "$%0.2f"%[price]
    "$%0.2f"%[price]
    
  end

end
