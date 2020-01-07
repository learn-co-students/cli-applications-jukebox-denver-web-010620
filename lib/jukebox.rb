
# # Add your code here
# def say_hello (name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songsArray)
  puts "Please enter a song name or number:"
  songChoice = gets.strip
  
  if songChoice == "1" or songChoice == songsArray[0]
    puts "Playing #{songsArray[0]}"
  elsif songChoice == "2" or songChoice == songsArray[1]
    puts "Playing #{songsArray[1]}"
  elsif songChoice == "3" or songChoice == songsArray[2]
    puts "Playing #{songsArray[2]}"
  elsif songChoice == "4" or songChoice == songsArray[3]
    puts "Playing #{songsArray[3]}"
  elsif songChoice == "5" or songChoice == songsArray[4]
    puts "Playing #{songsArray[4]}"
  elsif songChoice == "6" or songChoice == songsArray[5]
    puts "Playing #{songsArray[5]}"
  elsif songChoice == "7" or songChoice == songsArray[6]
    puts "Playing #{songsArray[6]}"
  elsif songChoice == "8" or songChoice == songsArray[7]
    puts "Playing #{songsArray[7]}"
  elsif songChoice == "9" or songChoice == songsArray[8]
    puts "Playing #{songsArray[8]}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songsArray)
  songsArray.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end


def exit_jukebox
  puts "Goodbye"
end

def run(songsArray)
puts "Please enter a command:"
userInput = gets.strip
  while userInput != "exit"
    if userInput == "help"
      help
    elsif userInput == "list"
      list(songsArray)
    elsif userInput == "play"
      play(songsArray)
    else 
      puts "Please enter a *valid* command next time"
    end
      puts "Please enter a command:"
      userInput = gets.strip
  end
  exit_jukebox
end

# def help
#   puts "I accept the following commands:"
#   puts "- help : displays this help message"
#   puts "- list : displays a list of songs you can play"
#   puts "- play : lets you choose a song to play"
#   puts "- exit : exits this program"
# end