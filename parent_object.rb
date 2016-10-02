class Character
  def set_race=(race)
    @race = race
  end

  def get_race
    return @race
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
end

class Elven < Character
  def set_subrace=(subrace)
    @subrace = subrace
  end

  def get_subrace
    return @subrace
  end

  def magical_attribute
    return "animal affinity"
  end

  def elf
    return "#{@name} is a #{@sex} level #{@level} #{@race} #{@subrace} with " + magical_attribute
  end

end

class Dwarven < Character
  def race
    return "Dwarf"
  end

  def set_location=(location)
    @location = location
  end

  def special_ability
    return "alcohol tolerance"
  end

  def dwarf
    return "#{@name} is a #{@sex} level #{@level} #{@location} #{@race} with " + special_ability
  end
end

my_character = Elven.new
my_character.set_race = 'Elven'
my_character.set_subrace = 'Drow'
my_character.set_sex = 'Male'
my_character.set_name = 'Drizzt'
my_character.set_level = '1'

your_character = Dwarven.new
your_character.set_race = "Dwarf"
your_character.set_location = 'Mountain'
your_character.set_sex = 'Female'
your_character.set_name = 'Floin'
your_character.set_level = '3'

puts my_character.elf + "\n" +  your_character.dwarf
puts my_character.inspect
puts your_character.inspect
