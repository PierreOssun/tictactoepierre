class Boardcase

  attr_accessor :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :value

  def initialize(c1,c2,c3,c4,c5,c6,c7,c8,c9)
    @c1 = c1
    @c2 = c2
    @c3 = c3
    @c4 = c4
    @c5 = c5
    @c6 = c6
    @c7 = c7
    @c8 = c8
    @c9 = c9
  end

  def case_selector(case_selected,value)
    case case_selected
    when case_selected = 1
      @c1 = value
    when case_selected = 2
      @c2 = value
    when case_selected = 3
      @c3 = value
    when case_selected = 4
      @c4 = value
    when case_selected = 5
      @c5 = value
    when case_selected = 6
      @c6 = value
    when case_selected = 7
      @c7 = value
    when case_selected = 8
      @c8 = value
    when case_selected = 9
      @c9 = value
    end
  end

  def board_graphics
    puts "
    |-----|-----|-----|
    |  #{c1}  |  #{c2}  |  #{c3}  |
    |-----|-----|-----|
    |  #{c4}  |  #{c5}  |  #{c6}  |
    |-----|-----|-----|
    |  #{c7}  |  #{c8}  |  #{c9}  |
    |-----|-----|-----| "
  end

  def conditon_de_victoire
    return false
  end

end

class Player

  attr_accessor :name, :value

  def initialize(name,value)
    @name = name
    @value = value
  end

end


#Choix des noms de joueurs
puts "quel est le nom du joueur 1 ?"
playeru_name = gets.chomp
playeru = Player.new(playeru_name,"X")
puts "#{playeru.name} jouera les croix !"
puts "quel est le nom du joueur 2 ?"
playerd_name = gets.chomp
playerd = Player.new(playerd_name,"O")
puts "#{playerd.name} jouera les ronds !"
casenew = Boardcase.new("1","2","3","4","5","6","7","8","9")
casenew.board_graphics

#Le jeu commence !
i = 0
  while i < 9
    break if casenew.conditon_de_victoire == true
    puts "#{playeru.name} veuillez chosir une case !"
    case_selected = gets.chomp.to_i
    i += 1
    if case_selected >= 1 && case_selected <= 9
      casenew.case_selector(case_selected,playeru.value)
      casenew.board_graphics
    else
      puts "Veuillez choisir en chiffre entre 1 et 9 !"
    end
    puts "#{playerd.name} veuillez chosir une case !"
    case_selected = gets.chomp.to_i
    i += 1
    if case_selected >=1 && case_selected <= 9
      casenew.case_selector(case_selected,playerd.value)
      casenew.board_graphics
    else
      puts "Veuillez choisir en chiffre entre 1 et 9 !"
    end
  end
  puts "EGALITE !"
