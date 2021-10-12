class Question

  attr_reader :number1, :number2, :answer
  def initialize
    @number1 = Random.new.rand(5)
    @number2 = Random.new.rand(5)
    @answer = @number1 + @number2
  end

  def ask_question(player)
    puts player.name
    puts "what is #{@number1} + #{@number2}"
    input = gets.chomp.to_i

    if input != @answer
      puts "wrong!"
      #pass in player class
      player.lose_lives
    else
      puts "right!"
    end
  end
  


  # def score(player)
  #   puts player.name
  #   puts "P1: #{@lives}/3 vs P2:#{@lives}/3"
  #   input = gets.chomp.to_i
  # end

end

