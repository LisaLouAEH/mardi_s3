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
      @plateau = ["0", @c1.initi, @c2.initi, @c3.initi, @c4.initi, @c5.initi, @c6.initi, @c7.initi, @c8.initi, @c9.initi]
      
    end
    def print_board
        puts "#{@c1.initi}    #{@c2.initi}    #{@c3.initi}"
        puts "#{@c4.initi}    #{@c5.initi}    #{@c6.initi}"
        puts "#{@c7.initi}    #{@c8.initi}    #{@c9.initi}"
        
      end
  end

  class Board_case
    attr_accessor :init_value 
    def initialize
      @init_value = "."
    end
    def initi
      return @init_value
    end
  end

  class Player
    attr_accessor
    def initialize(name, signe)
        @name = name
        @signe = signe
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
    end
    def round
        
        
    end
end

#plateau = Board.new
#plateau.print_board
game = Game.new
game
