# frozen_string_literal: true

# Part 1

def sum(arr)
  num = arr.length;
  return 0 if num == 0;
  ans = 0;
  for tmp in arr do
    ans = ans + tmp;
  end
  return ans;
end

def max_2_sum(arr)
  num = arr.length;
  return 0 if num == 0;
  return arr[0] if num == 1;
  large1 = arr[0];
  large2 = -Float::INFINITY;
  count = 1;
  while count < num
    if large1 < arr[count]
      large2 = large1;
      large1 = arr[count];
    elsif large2 < arr[count]
      large2 = arr[count];
    end
    count = count + 1;
  end
  return large1 + large2;
end

def sum_to_n?(arr, number)
  num = arr.length
  return false if num == 0;
  return false if num == 1;
  for i in 0...num-1 do
    for j in i+1...num do
      return true if arr[i] + arr[j] == number;
    end
  end
  return false;
end

# Part 2

def hello(name)
  return 'Hello, ' + name;
end

def starts_with_consonant?(string)
  if string.match(/^[AEIOUaeiou]/)
    return false;
  elsif string.match(/^[A-Za-z]/)
    return true;
  else
    return false;
  end
end

def binary_multiple_of_4?(string)
  if string.match(/^[0]+$/)
    return true;
  elsif string.match(/^[10]+00$/)
    return true;
  else
    return false;
  end
end

# Part 3

# Object representing a book
class BookInStock
  String @isbn = '';
  Float @price = 0;

  def isbn
    return @isbn;
  end

  def isbn=(isbn)
    @isbn = isbn;
  end

  def price
    return @price;
  end

  def price=(price)
    @price=price
  end

  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError;
    end
    @isbn = isbn;
    @price = price;
  end

  def price_as_string
    return '$' + '%0.2f' % @price;
  end
end

