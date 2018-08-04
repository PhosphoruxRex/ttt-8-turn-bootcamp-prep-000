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
