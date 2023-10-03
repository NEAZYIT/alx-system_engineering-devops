#!/usr/bin/env ruby

# Function to match and join all uppercase letters
def match_and_join_uppercase_letters(text)
  # Define a regular expression pattern to match uppercase letters
  pattern = /[A-Z]/
  
  # Find all matches and join them
  matches = text.scan(pattern).join

  matches
end

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
input_text = ARGV[0]

# Call the function to match and join the uppercase letters
result = match_and_join_uppercase_letters(input_text)

# Print the result
puts result
