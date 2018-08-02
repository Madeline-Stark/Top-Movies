module TopMovies
class CLI
  require "pry"

def run
    greeting
    menu
end

def greeting
  puts "Hello cinephile! Welcome to Top Movies!"
end

def menu
  input = nil
  puts "Your options are to 1. See the top 250 movies of IMDB. 2.See the release date of a specific movie. 3.See if your favorite movie is on the list."
  puts "Please enter the number of the option you're interested in or type exit to leave:"


      input = gets.strip.downcase
      Movies.make_movies #need to put this here so methods will work if called before option 1

      if input.to_i == 1
        Movies.list_movies
        menu
      elsif input.to_i == 2
        puts "What movie are you interested in?"
        movie = gets.strip
        Movies.show_movie_date(movie)
        menu
      elsif input.to_i == 3
          puts "What's your favorite movie?"
          movie = gets.strip
          Movies.movie_included(movie)
          menu
    elsif input == "exit"
      puts "See you later!"
       else
         puts "Sorry, that's not an option."
         menu
      end
  end


end
end
