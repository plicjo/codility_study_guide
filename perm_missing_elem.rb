def missing_element(array)
  return 1 if array.empty?

  sorted_array = array.sort
  sorted_array.each_with_index do |num, index|
    return 1 if index == 0 && num != 1
    return num + 1 if sorted_array[index + 1] != num + 1
  end
end
