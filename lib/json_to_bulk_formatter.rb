input_filename = "data/hypnosys_character_formatted.json"
output_filename = "data/hypnosys_character.json"

txt = ""

File.open(input_filename, 'r') do |io|
  txt = io.read
end

lines = txt.split("\n")

File.open(output_filename, 'w') do |io|
  current_line = ''
  lines.each do |line|
    if line.end_with?('EOL')
      current_line += line.strip.delete('EOL')
      io.puts current_line
      current_line = ''
    else
      current_line += line.strip
    end
  end
end
