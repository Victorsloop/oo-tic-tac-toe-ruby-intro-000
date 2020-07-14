WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def initialize
  @board = Array.new(9, " ")
end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user)
  user.to_i - 1
end

def move(index, player = "X")
  @board[index] = player
end

def position_taken?(index)
  !(@board[index].nil? || @ board[index] == " ")
end

def valid_move?(index)
index.between?(0,8) && !position_taken?(index)
end

def turn
  puts "Please choosea number 1-9:"
  user = gets.chomp
  index = input_to_index(user)
  if valid_move?(index)
    token = current_player
    move(index, token)
    display_board
  else
    turn
  end 
