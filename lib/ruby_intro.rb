# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  0.upto(arr.length-1) do |i|
    sum+=arr[i]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length == 0

  return arr[0] if arr.length == 1
  
  if arr[0] > arr[1]
    first = arr[0]
    second = arr[1]
  else
    first = arr[1]
    second = arr[0]
  end
  
  2.upto(arr.length-1) do |i|
    if arr[i] >= first
      second = first
      first = arr[i]
    elsif arr[i] > second 
      second = arr[i]
    end
  end
  return (first + second)

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length==0 or arr.length==1
  
  
  0.upto(arr.length-2) do |i|
    
    (i+1).upto(arr.length-1) do |j|
      
      return true if arr[i]+arr[j]==n
      
    end
    
  end
    
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  result="Hello, "+name
  return result
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return true if (s =~ /[b-df-hj-np-tv-z]/i)==0
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length==0
  
  0.upto(s.length-1) do |i|
    return false  if s[i] !='1' and s[i] !='0'
  end
  
  decimal=s.to_i(2)
  return true if decimal%4==0
  return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.length==0 or price<=0
      raise  ArgumentError
    end
    @isbn=isbn
    @price=price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn=new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price=new_price
  end
  
  def price_as_string
    result="$%0.2f"% [@price]
    return result
  end
  
end
