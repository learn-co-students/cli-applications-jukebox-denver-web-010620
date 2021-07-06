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
  puts "I accept the following commands:\n"
  puts "- help : displays this help message\n"
  puts "- list : displays a list of songs you can play\n"
  puts "- play : lets you choose a song to play\n"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
   puts "#{index + 1}. #{song}\n"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip

  song_index = songs.find_index {|song| song == song_choice}

  if song_index == nil
    if (song_choice.to_i <= songs.length && song_choice.to_i != 0)
      song_index = song_choice.to_i
      puts "Playing #{songs[song_index - 1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    puts "Playing #{songs[song_index]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  loop do

    case command
      when "help"
        help
        puts "Please enter a command:"
        command = gets.strip
      when "list"
        list(songs)
        puts "Please enter a command:"
        command = gets.strip
      when "play"
        play(songs)
        puts "Please enter a command:"
        command = gets.strip
      when "exit"
        exit_jukebox
        break
      else
        puts "Invalid command"
        puts "Please enter a command:"
        command = gets.strip
    end

  end
end