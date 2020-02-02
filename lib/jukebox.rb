# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays the help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"
  song_index = gets.strip
  song_name = song_array[song_index]
  puts "Playing #{song}"
  puts "Invalid input, please try again"
end
