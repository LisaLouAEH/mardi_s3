require 'awesome_print'

class Board
#  attr_accessor :board, :case_1, :case_2, :case_3, :case_4, :case_5, :case_6, :case_7, :case_9
  def initialize
    @case_1 = BoardCase.new(1)
    @case_2 = BoardCase.new(2)
    @case_3 = BoardCase.new(3)
    @case_4 = BoardCase.new(4)
    @case_5 = BoardCase.new(5)
    @case_6 = BoardCase.new(6)
    @case_7 = BoardCase.new(7)
    @case_8 = BoardCase.new(8)
    @case_9 = BoardCase.new(9)

    @case_array = [0, @case_1, @case_2, @case_3, @case_4, @case_5, @case_6, @case_7, @case_8, @case_9]
  end

  def array_value
    return @case_array
  end

  def print_board
    print "#{@case_1.case_value}    #{@case_2.case_value}    #{@case_3.case_value}"
    puts "     1 - 2 - 3 \n".green
    print "#{@case_4.case_value}    #{@case_5.case_value}    #{@case_6.case_value}"
    puts "     4 - 5 - 6 \n".green
    print "#{@case_7.case_value}    #{@case_8.case_value}    #{@case_9.case_value}"
    puts "     7 - 8 - 9".green
  end
end

class BoardCase
  attr_accessor :value
  def initialize(map)
    @value = ".".red
    @map = map
  end
  def ass_value
    return @map
  end
  def case_value
    return @value
  end
  def change_value(symb)
    @value = symb
  end
end

class Player
  attr_accessor :player, :symb
  def initialize(player, symb)
    @name = player
    @symb = symb
  end
  def first_name
    return @name
  end
  def player_symb
    return @symb
  end
end

class Game
  def initialize
#presentation du jeu et config des players
    puts "Bienvenue dans le jeu du morpion\n\n" .green

    print "Player_1, entrez votre prénom > " .cyan
    player_1 = gets.chomp
    @player_1 = Player.new(player_1, "O".cyan)
    print "Player_2, entrez votre prénom > " .purple
    player_2 = gets.chomp
    @player_2 = Player.new(player_2, "X".purple)
    puts "\n#{@player_1.first_name} (#{@player_1.player_symb}) VS #{@player_2.first_name} (#{@player_2.player_symb})" .green
    puts ""
    puts "#{@player_1.first_name} play first" .cyan
    @board = Board.new
    @board.print_board
    round
  end

  def round
    stop = 0
    stock = @board.array_value
    while (stop == 0)
      test = 0
      while (test == 0)
        puts "#{@player_1.first_name} ou voulez vous jouer? (saisir un chiffre entre 1 et 9)" .cyan
        input_p1 = gets.chomp.to_i
        test = conditions(stock, input_p1, @player_1)
      end

      test = 0
      while (test == 0)
        puts "#{@player_2.first_name} ou voulez vous jouer? (saisir un chiffre entre 1 et 9)" .purple
        input_p2 = gets.chomp.to_i
        test = conditions(stock, input_p2, @player_2)
      end
      end
  end

  def conditions(stock, input, player)
    if (input > 0 && input < 10) && (stock[input].case_value == ".".red)
      stock[input].change_value(player.player_symb)
      puts ""
      @board.print_board
      return 1
    else
      puts "don't cheat" .red
      return 0
    end
  end
end

game = Game.new
#game.print_players_name
