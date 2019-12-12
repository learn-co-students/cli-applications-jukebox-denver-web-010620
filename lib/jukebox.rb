# Add your code here
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

puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, i|
        puts "#{i+1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    song_ident = gets.chomp
    if song_ident.to_i >= 1 && song_ident.to_i <= 9
        puts "Playing #{songs[song_ident.to_i - 1]}"
    elsif songs.include?(song_ident)
        puts "Playing #{song_ident}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    user_input = ""
    while user_input
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == 'exit'
        exit_jukebox
        break
    elsif user_input == 'list'
        list(songs)
    elsif user_input == 'play'
        list(songs)
        play(songs)
    else
        help
    end
end
end
# def say_hello(name)
#     "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)
