def print_grid(board)
  board.each_with_index do |row, row_index|

    # reformat each row and print
    row_array = []
    row.each do |column|
      if column.nil?
        row_array << "   "
      else
        row_array << " #{column} "
      end
    end
    puts row_array.join("|")

    # separating each row with dashes
    if row_index < (board.length - 1)
      11.times { print "-" }
    end
    puts
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

print_grid(board_a)
puts
print_grid(board_b)
