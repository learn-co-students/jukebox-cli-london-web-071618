require 'pry'
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
  #binding.pry
 puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end  

def list(songs)
  binding.pry
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if list(songs).include?(user_song)
    puts "Playing #{user_song}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  #binding.pry
  puts "Goodbye"
end 

def run(songs)
   puts "Please enter a command:"
   user_response = gets.chomp
      until gets.chomp == "exit"
      puts "Please enter a command:"
      user_response = gets.chomp
            if user_response == "list"
              puts list 
            elsif user_response == "play"
              puts play 
            elsif user_response == "help"
            #binding.pry
              puts help 
            else user_response == "exit"
              puts exit_jukebox
            end 
        end  
end

