

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = (input.to_i) - 1
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
<<<<<<< HEAD
    turn(board)
=======
    until valid_move?(board, index) == true
      turn(board)
    end
>>>>>>> eb469da4e28ee4e032942746a66a7aecfb69851d
  end
end
