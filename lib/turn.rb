def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  if input.to_i.to_s==input
     return input.to_i-1
  else
   return -1
  end
end

def valid_move?(board,index)
  if (!(board[index]=="X"))&&(!(board[index]=="O"))&& index.between?(0,8)
    return true
end
end

def move(board,index,value="X")
  board[index]=value
end

def turn(board)
  puts 'Please enter 1-9:'
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index,value="X")
  else turn(board)
  end
  display_board(board)
end
