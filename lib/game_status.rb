# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)

  if board.any? { |e| e != " " }
    WIN_COMBINATIONS.each do |n|
      index1 = n[0]
      index2 = n[1]
      index3 = n[2]

      position1 = board[index1]
      position2 = board[index2]
      position3 = board[index3]

      if position1 == "X" && position2 == "X" && position3 == "X"
        return n
      elsif position1 == "O" && position2 == "O" && position3 == "O"
        return n
      end
      if full?(board)
        false
      end
    end
  else
    false
  end
end

def full? (board)
  if board.all? { |k| k != " "}
    true
  else
    false
  end
end
