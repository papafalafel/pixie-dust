class Character
  def set_race=(race)
    @race = race
  end

  def get_race
    return @race
  end

  def set_species=(species)
    @species = species
  end

  def get_species
    return @species
  end

  def set_sex=(sex)
    @sex = sex
  end

  def get_sex
    return @sex
  end

  def set_name=(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_level=(level)
    @level = level
  end

  def character_sheet
    return "#{@name} is a #{@sex} #{@race} #{@species} at level #{@level}"
  end
end

my_character = Character.new
my_character.set_race = 'Elven'
my_character.set_species = 'Drow'
my_character.set_sex = 'Male'
my_character.set_name = 'Drizzt'
my_character.set_level = '1'

puts my_character.character_sheet
