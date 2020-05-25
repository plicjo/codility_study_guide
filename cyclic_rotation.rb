# This is actually the simplest solution
def cyclic_rotation(initial_array, rotations)
  initial_array.rotate(rotations)
end

# Here's an algorithmic solution though
def cyclic_rotation(initial_array, rotations)
  return initial_array if initial_array.empty?

  (1..rotations).reduce(initial_array) do |current_array, _|
    last_element = current_array.slice(-1)
    array_minus_last_element = current_array.slice(0..-2)
    [last_element] + array_minus_last_element
  end
end

