def frog_jump(starting_position, end_position, jump_size)
  necessary_jumps = (end_position - starting_position.to_f) / jump_size
  necessary_jumps.ceil
end
