# 'ciucik'.each_char { |char| puts char }
# appending to array:
# array = []
# array << 'ciucik'
# array << 'to'
# array << 'pies'

def my_split(string, delimiter)

  array = []
  el = ''
  string.each_char{|char|
    if char != delimiter
      el = el + char
    else
      array << el
      el = ''
    end
  }
  array << el
  array
end


# turns array into string, using separator
def my_join(array, separator)

  string = ''
  array.each_with_index do |elem, index|
    if index < array.length - 1
      string << elem + separator
    else
      string << elem
    end
  end
  
  string
end


# returns sum of array elements (elements are numbers)
def my_sum(array)
  return nil if array.length == 0

  sum = 0
  array.each do |elem|
    sum = sum + elem
  end
  sum
end




# returns product of array elements (elements are numbers)
# (product is result of multiplication)
def my_product(array)
  return nil if array.length == 0

  product = 1
  array.each do |elem|
    product = product * elem
  end
  product
end


# return array which elems are multiplied by `num`
def multiply_all_by(array, num)

  result = []
  array.each do |elem|
    result << elem * num
  end
  result
end

def my_map(array)
  result = []
  array.each do |elem|
    result << yield(elem)
  end
  result
end


def add_to_all(array, num)

  result = []
  array.each do |elem|
    result << elem + num
  end
  result
end
















# checks if all elements are divided by `num`
# def all_divided_by(array, num)

# checks if any element is divided by `num`
# def any_divided_by(array, num)
