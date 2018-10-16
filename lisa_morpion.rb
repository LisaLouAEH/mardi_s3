class Board
    attr_accessor :plateau
    def initialize
      @c1 = Board_case.new 
      @c2 = Board_case.new 
      @c3 = Board_case.new
      @c4 = Board_case.new 
      @c5 = Board_case.new 
      @c6 = Board_case.new
      @c7 = Board_case.new 
      @c8 = Board_case.new 
      @c9 = Board_case.new 
      @plateau = ["0", @c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9]
      
    end
    def print_board
        puts "#{@c1.initi}    #{@c2.initi}    #{@c3.initi}"
        puts
        puts "#{@c4.initi}    #{@c5.initi}    #{@c6.initi}"
        puts
        puts "#{@c7.initi}    #{@c8.initi}    #{@c9.initi}"
        
      end
  end

  class Board_case
    attr_accessor :init_value, :count
    def initialize
      @init_value = "."
      @count = 0
    end
    def change_initi(i)
      
      @init_value = i
    end
    def initi
      return @init_value
    end

  end

  class Player
    attr_accessor :name,  :sign
    def initialize(n, s)
        @name = n
        @sign = s
    end
    def name
      return @name
    end
    def sign
      return @sign
    end

end

class Game
    attr_accessor :player_1, :player_2, :gboard

    def initialize
        puts "nom joueur 1 :"
        @player_1 = Player.new(gets.chomp, "X")
        puts "nom joueur 2 :"
        @player_2 = Player.new(gets.chomp, "O")
        @gboard = Board.new
        puts @gboard.print_board#ok
        round
    end
    def round
      @count = 0
      while @count < 8
        if je sais pas... == "."
          puts "saisir chiffre"
          input_p1 = gets.to_i
          @board = @gboard.plateau[input_p1].change_initi(player_1.sign)
          @gboard.print_board
          puts "ceci est un #{@board}"
          @count += 1 #pour compter les tours
        
          puts "saisir chiffre"
          input_p2 = gets.to_i
          @board = @gboard.plateau[input_p2].change_initi(player_2.sign)
          @gboard.print_board
          puts "ceci est un #{@board}"
          @count += 1 #pour compter les tours
        else
          puts "Les toilettes sont occupées"
          print "JPP..."
        end
      end
      
    end
end

plate = Board.new
plate.print_board#ok

game = Game.new
puts game.player_1.sign#    X