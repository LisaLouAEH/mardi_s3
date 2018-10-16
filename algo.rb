

def var(tab)
    @tab = tab
    @line_top = "#{@tab[1]}    #{@tab[2]}    #{@tab[3]}     1 - 2 - 3"
    @line_midle = "#{@tab[4]}    #{@tab[5]}    #{@tab[6]}     4 - 5 - 6"
    @line_botom = "#{@tab[7]}    #{@tab[8]}    #{@tab[9]}     4 - 5 - 6"
    @grille = [@line_top, @line_midle, @line_botom]
    return @grille
end
def truc(tab)
    @tab = tab
    print "saisir une position ?"
    @input = gets.to_i
    @tab[@input].gsub!(".", "X")
    return var(@tab)
end

puts truc([0, ".", ".", ".", ".", ".", ".", ".", ".", "."])