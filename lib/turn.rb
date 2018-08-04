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
  input = gets - 1
  if (input >= 0) && (input <= 8)
    move(board, input)
  else
    puts "Invalid entry! Try again..."
    input = turn(board)
    move(board, input)
end
