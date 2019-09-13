def help
    command_hash = {
	     "help" => "displays this help message",
	      "list" => "displays a list of songs you can play",
	       "play" => "lets you choose a song to play",
	        "exit" => "exits this program"
        }
        puts "I accept the following commands:"
        command_hash.each do |commands, values|
          puts "- #{commands} : #{values}"
        end
      end


def list(songslist)
  songslist.length.times {|n| puts "#{n + 1}. #{songslist[n]}"}
end


def play(songsarr)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if songsarr.index(user_input.to_s)
    puts "Playing #{user_input}"
  elsif user_input.to_i - 1 >= 0 && songsarr[user_input.to_i - 1]
    puts "Playing #{songsarr[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(arraylist)
  loop do
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == 'exit'
      exit_jukebox
      break
    elsif user_input == 'help'
      help
    elsif user_input == 'play'
      play(arraylist)
    elsif user_input == 'list'
      list(arraylist)
    end
  end
end
