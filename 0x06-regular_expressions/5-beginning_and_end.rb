#!/usr/bin/env ruby

# Function to match and join all occurrences of strings that start with 'h,' end with 'n,' and have one character in between
def match_and_join(text)
  # Define a regular expression pattern to match 'h,' any single character, and 'n'
  pattern = /^h.n$/
  
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

# Call the function to match and join the occurrences
result = match_and_join(input_text)

# Print the result
puts result
