# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]

def won?(board)
  WIN_COMBINATIONS.any? do |i|
    if board[i[0]] == "X"  && board[i[1]] == "X" && board[i[2]] == "X" ||
       board[i[0]] == "O"  && board[i[1]] == "O" && board[i[2]] == "O"
      return i
      else false
    end
  end
end

def full?(board)
  board.all?{|position| position != " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if !won?(board)
    nil
  end
  if won?(board)
    WIN_COMBINATIONS.any? do |i|
    if board[i[0]] == "X"  && board[i[1]] == "X" && board[i[2]] == "X"
      return "X"
      elsif board[i[0]] == "O"  && board[i[1]] == "O" && board[i[2]] == "O"
      return "O"
    end
    end
  end
end