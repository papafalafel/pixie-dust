class Character

attr_accessor :race, :species, :sex, :name, :level

  def character_sheet
    return "#{@name} is a #{@sex} #{@race} #{@species} at level #{@level}"
  end
end

my_character = Character.new
my_character.race = 'Elven'
my_character.species = 'Drow'
my_character.sex = 'Male'
my_character.name = 'Drizzt'
my_character.level = '1'

puts my_character.character_sheet
