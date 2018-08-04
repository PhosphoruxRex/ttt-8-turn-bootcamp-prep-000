def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (board[index] == " ") && (index >= 0) && (index <= 8)
    true
  end
end

def move(board, index, token="X")
  board[index] = token
end


def input_to_index(val)
  val.to_i - 1

end

# If the move is valid, make the move and display the board to the user.
# If the move is invalid, ask for a new move until a valid move is received.
def turn(board)
  # Asking the user for their move by position 1-9.
  puts "Please enter 1-9:"
  # Receiving the user input.
  input = gets
  # Convert position to an index.
  input_to_index(input)
  if (input >= 0) && (input <= 8)
    move(board, input)
  else
    puts "Invalid entry! Try again..."
    input = turn(board)
    move(board, input)
  end
end
