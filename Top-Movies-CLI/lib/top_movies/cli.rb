class CLI

#for now call on other methods from other classes and if it doens't work, deal with it on sunday session

def run
    greeting 
    menu
    goodbye
end

def greeting
  puts "Hello cinephile! Welcome to Top Movies!"
end 

def menu
  input = nil
  puts "Your options are to 1. See the top 250 movies of IMDB. 2. See if your favorite movie is on the list."
  puts "Please enter the number of the option you're interested in or type exit to leave:"


    while input != "exit"
 
      input = gets.strip.downcase

      if input.to_i == 1
        make_movies
        display_movies
        menu
      elsif input == 2
          puts "What's your favorite movie?"
          movie = gets.strip.downcase 
          favorite_movie(movie)
          menu
       else
         puts "Sorry, that's not an option."
         menu 
      end
     end
     #should go to goodbye after this as is called in run 
  end

  def make_movies
      movies_array = Scraper.scrape_index_page
      Movies.create_from_collection(movies_array)
    end

  def display_movies
      Movies.all.each_with_index(1) do |movie, index|
        puts "#{index}.) : ""#{movie.name.upcase}"
  end

  def favorite_movie(movie)
    Movies.movie_included(movie)
  end 

  def goodbye
    puts "See you later!"
  end



end 