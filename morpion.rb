class Board
#  attr_accessor :board, :case_1, :case_2, :case_3, :case_4, :case_5, :case_6, :case_7, :case_9
  def initialize
    @case_1 = BoardCase.new
    @case_2 = BoardCase.new
    @case_3 = BoardCase.new
    @case_4 = BoardCase.new
    @case_5 = BoardCase.new
    @case_6 = BoardCase.new
    @case_7 = BoardCase.new
    @case_8 = BoardCase.new
    @case_9 = BoardCase.new
  end

  def print_board
    puts "#{@case_1.case_value}    #{@case_2.case_value}    #{@case_3.case_value}"
    puts ""
    puts "#{@case_4.case_value}    #{@case_5.case_value}    #{@case_6.case_value}"
    puts ""
    puts "#{@case_7.case_value}    #{@case_8.case_value}    #{@case_9.case_value}"
  end
end

class BoardCase
#  attr_accessor :board, :case
  def initialize
    @value = "."
  end
  def case_value
    return @value
  end
end

class Player
  attr_accessor :player
  def initialize(player)
    @name = player
  end
  def first_name
    return @name
  end
end

class Game
  def initialize
    puts "Bienvenue dans le jeu du morpion\n\n"

    print "Player_1, entrez votre prénom > "
    player_1 = gets.chomp
    @player_1 = Player.new(player_1)
    print "Player_2, entrez votre prénom > "
    player_2 = gets.chomp
    @player_2 = Player.new(player_2)
    puts "\n#{@player_1.first_name} VS #{@player_2.first_name}"
    puts ""
    puts "#{@player_1.first_name} play first"
    @board = Board.new
    @board.print_board
  end
end

game = Game.new
#game.print_players_name
