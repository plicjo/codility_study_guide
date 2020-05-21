def odd_occurrences(array)
  array.group_by { |num| num }.each_value do |value|
    return value[0] if value.length.odd?
  end
end
