def tape_equilibrium(array)
  minimum = Float::INFINITY
  array_length = array.length
  left_split = 0
  right_split = array.inject(:+)

  array.each_with_index do |number, index|
    next if index == array_length - 1
    left_split += number
    right_split -= number
    difference = (left_split - right_split).abs
    minimum = difference if difference < minimum
  end

  minimum
end
