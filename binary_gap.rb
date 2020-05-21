def binary_gap(number)
  binary_representation = number.to_s(2)
  matches = binary_representation.scan(/(?<=1)(0+)(?=1)/).flatten
  return 0 if matches.empty?
  matches.max.length
end
