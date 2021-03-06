songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index +=1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  help
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      list(songs)
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
