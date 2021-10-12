require './gameQ'
require './player'
# require './turn'

player1 = Player.new('potato')
player2 = Player.new('pie')
# puts player1.name
# puts player1.lives
# player1.lose_lives
# puts player1.lives
# current_turn = -1

loop do

# player1.lives > 0 
  question = Question.new()
  # puts question.number1
  # puts question.number2
  # puts question.answer
  question.ask_question(player1)
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  
  if player1.game_over 
    puts "GAME OVER: you dead!"
    break
  end


# while player2.lives > 0 
  question = Question.new()
  question.ask_question(player2)
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  if player2.game_over
    puts "GAME OVER: you dead!"
    break
  end


end

# if current_turn = -1
#     question.ask_question(player1)
# else
#   question.ask_question(player2)
# end
#switch case 1st person q p1 out of loop active pl1 =p1