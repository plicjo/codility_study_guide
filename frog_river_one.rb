require 'set'

def frog_river_one(final_position, leaf_positions)
  unique_positions = Set.new

  leaf_positions.each_with_index do |leaf_position, second_it_fell|
    unique_positions.add(leaf_position) if leaf_position < (final_position + 1)
    return second_it_fell if unique_positions.length == final_position
  end

  return -1
end
