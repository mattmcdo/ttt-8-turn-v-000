def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character = "X")
  board[position] = character
end

def input_to_index(user_input)
  user_input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
input = 1
def position_taken?(board, input)
  taken = nil
  if (board[input] == "" || board[input] == " " || board[input] == nil)
    taken = false
  else
    taken = true
  end
end

def valid_move?(board, input)
  if input.between?(0,8) && position_taken?(board, input) == false
    true
  else
    false
  end
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(board, index)
  move(board, index, character = "X")
  puts "#{index + 1}"
  display_board(board)
else
  until valid_move?(board, index)
puts "Please enter 1-9:"
index = input_to_index(user_input)
end
end
end
