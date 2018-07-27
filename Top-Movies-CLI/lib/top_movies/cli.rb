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
 
# When they choose see imdb top 250 they will see a list actors scraped from imdb's top 250. 
#Once they’ve chosen this, they will be 
# prompted again to see if they’d like to see the list again or go back to the main menu. 
# if number 2 ask what is your favorite movie? if movie included method from movie class is true,
#say congrats! your favorite movie is a critical darling! or: Sorry! You must have bad taste in movies! 

#     while input != "exit"
#  
#       input = gets.strip.downcase
# 
#       if input.to_i > 0
#         the_deal = @deals[input.to_i-1]
#         puts "#{the_deal.name} - #{the_deal.price} - #{the_deal.availability}"
#       elsif input == "list"
#         list_deals
#       else
#         puts "Not sure what you want, type list or exit."
#       end
#     end
#   end
# 

  def make_movies
      movies_array = Scraper.scrape_index_page
      Movies.create_from_collection(movies_array)
    end

  def display_movies
      Movies.all.each_with_index(1) do |movie, index|
        puts "#{index}.) : ""#{movie.name.upcase}"
  end

  def goodbye
    puts "See you later!"
  end



end 