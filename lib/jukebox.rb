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
  songslength = song_array.length()
  song_index = gets.strip
  if (song_index < songlength && song_index > 0)
    song_name = song_array[song_index]
  else
    song_name = song_array.find do |song| song == song_index end
  end
  
  if song_name
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end
