require 'set'

def missing_integer(array)
  set = Set.new(array)
  sorted_positive_numbers = set.select { |num| num > 0 }.sort
  smallest = 1
  return smallest if sorted_positive_numbers.length == 0
  sorted_positive_numbers.each do |num|
    return smallest if smallest < num
    smallest += 1
  end
  smallest
end
