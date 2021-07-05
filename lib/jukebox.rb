
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index do |v,i|
    puts "#{i+1}. #{v}"
  end
end

def play(song_list)
  match_found = nil
  puts "Please enter a song name or number:"
  input = gets.strip
  song_list.each_with_index do |v,i|
    if (input == v || input.to_i == (i+1))
      puts "Playing #{v}"
      match_found = true
    end #if
  end #songlist.each
  if !match_found
    puts "Invalid input, please try again"
    match_found = nil
  end #if
end #method

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  puts "Please enter a command:"
  input = gets.strip
  case input
  when "list"
    list(song_list)
  when "exit"
    exit_jukebox
  when "play"
    play(song_list)
  when "help"
    help
  end
end

  
  
    