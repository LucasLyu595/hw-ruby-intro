# frozen_string_literal: true

# Part 1

def sum(arr)
  num = arr.length
  return 0 if num.zero?

  ans = 0
  arr.each { |n| ans += n }
  ans
end

def max_2_sum(arr)
  num = arr.length
  return 0 if num.zero?
  return arr[0] if num == 1

  large1 = arr[0]
  large2 = -Float::INFINITY
  count = 1
  while count < num
    if large1 < arr[count]
      large2 = large1
      large1 = arr[count]
    elsif large2 < arr[count]
      large2 = arr[count]
    end
    count += 1
  end
  large1 + large2
end

def sum_to_n?(arr, number)
  num = arr.length
  return false if num.zero?
  return false if num == 1

  (0...num - 1).each do |i|
    (i + 1...num).each do |j|
      return true if arr[i] + arr[j] == number
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  case string
  when /^[AEIOUaeiou]/
    false
  when /^[A-Za-z]/
    true
  else
    false
  end
end

def binary_multiple_of_4?(string)
  case string
  when /^0+$/
    true
  when /^[10]+00$/
    true
  else
    false
  end
end

# Part 3

# Object representing a book
class BookInStock
  String @isbn = ''
  Float @price = 0

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%0.2f', @price)
  end
end
