# Define a method
def always_three (user_input)
# Do the math and display answer
  puts "Your new number is: " + (((user_input + 5) * 2 - 4) / 2 - user_input).to_s + ", yay math!"
end

# Ask the user for a number
puts "How's about you give me a number?"
# Get the number and convert it to an integer.
  user_input = gets.to_i
# Call the method
always_three(user_input)
