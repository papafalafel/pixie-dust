def numerology_meaning(birth_path_num)
# Case to reveal the user's numerology meaning.
puts "Your birth path number is #{birth_path_num} \n"
case birth_path_num
  when 1
    puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
  when 2
    puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3
    puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4
    puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6
    puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7
    puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8
    puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9
    puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    puts "Oops, you don't have a birth path number."
  end
end

def birth_path_number(bday)
  # Convert each individual number to an integer and add them together.
  number = bday[0].to_i + bday[1].to_i + bday[2].to_i + bday[3].to_i + bday[4].to_i + bday[5].to_i + bday[6].to_i + bday[7].to_i

  # Convert back to a string
  number = number.to_s

  # Add to get a single digit number.
  number = number[0].to_i + number[1].to_i

  # If statement to continue narrowing down the number.
  if number > 9
    number = number[0].to_i + number[1].to_i
  end
  return number
end

# Ask the user for their birthday
puts "When is your birthday? (MMDDYYYY format)"

# Get the user's birthday
bday = gets

birth_path_num = birth_path_number(bday)
meaning = numerology_meaning(birth_path_num)

puts meaning
