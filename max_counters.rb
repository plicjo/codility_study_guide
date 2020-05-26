def max_counters(n, array)
  counters = Array.new(n, 0)
  max_counter = 0
  return counters if array.min >= n + 1

  array.each do |x|
    if (x == (n + 1))
      counters = Array.new(n, max_counter)
    else
      counter = counters[x - 1] += 1
      max_counter += 1 if counter > max_counter
    end
  end
  counters
end
