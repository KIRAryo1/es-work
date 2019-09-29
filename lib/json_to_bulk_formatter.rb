input_filename = "data/hypnosys_character_formatted.json"
output_filename = "data/hypnosys_character.json"

txt = ""

File.open(input_filename, "r") do |io|
  txt = io.read
end

lines = txt.split("\n")

File.open(output_filename, "w") do |io|
  
  lines.each do |line|
    io.puts line
    puts line
  end
end
