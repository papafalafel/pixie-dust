# Class name needs to be capitalized, I fixed it.
class Ferret

# Space after the equal sign breaks the code, deleted it.
	def set_name=(ferret_name)
		@name = ferret_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def squeal
		return "squeeeeee"
	end

end

class Chincilla
# Spelled Chincilla the same way as the class
	def set_name=(chincilla_name)
		@name = chincilla_name
	end
# Add get name definition
  def get_name
    return @name
  end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def squeek
		return "eeeep"
	end

end

class Parrot

	def set_name=(parrot_name)
# @name should return parrot_name not name.
		@name = parrot_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

# Add defintion for tweet
  def tweet
    return "tweeet"
  end
end

my_ferret = Ferret.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name = "Budgie"
parrotname = my_parrot.get_name

my_chincilla = Chincilla.new
my_chincilla.set_name= "Dali"
chincillaname = my_chincilla.get_name

puts "#{ferretname} says #{my_ferret.squeal},
#{parrotname} says #{my_parrot.tweet},
and #{chincillaname} says #{my_chincilla.squeek}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect

# This code could easily be refactored to be much shorter by defining a pet method instead of a method for each pet.
