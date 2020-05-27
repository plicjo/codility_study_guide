require 'set'

def permutations(array)
  return 0 if array.length != Set.new(array).length

  sorted_array = array.sort
  required_for_permutation = 1

  sorted_array.each do |number|
    return 0 if number != required_for_permutation
    required_for_permutation += 1
  end

  1
end
