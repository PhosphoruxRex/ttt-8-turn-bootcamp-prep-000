def display_board(board)
  puts board
end

def valid_move(board, index)
  if (board[index] == " ")
    true
  end
end

def move(board, index, token="X")
  board[index-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  if (input >= 1) && (input <= 9)
    input
  else
    puts "Invalid entry! Try again..."
    input = turn(board)
end