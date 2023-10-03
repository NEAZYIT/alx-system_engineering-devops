#!/usr/bin/env ruby

# Function to match and join all occurrences of 10-digit phone numbers
def match_and_join_phone_numbers(text)
  # Define a regular expression pattern to match 10-digit phone numbers
  pattern = /^\d{10}$/
  
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

# Call the function to match and join the 10-digit phone numbers
result = match_and_join_phone_numbers(input_text)

# Print the result
puts result
