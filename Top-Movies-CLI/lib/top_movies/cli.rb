class CLI

#don't forget to run in bin!


#for now call on other methods from other classes and if it doens't work, deal with it on sunday session

# 
# 
def make_movies
    movies_array = Scraper.scrape_index_page
    Movies.create_from_collection(movies_array)
  end

def display_movies
    Movies.all.each_with_index(1) do |movie, index|
      puts "#{index}.) : ""#{movie.name.upcase}"
end

# def call
#     greeting 
#     menu
#     goodbye
# end
# 
#   def list_movies
#   make_movies
#     display_movies
      #lists top 250 movies 
#     # doc = Nokogiri::HTML(open("link"))
#     puts "Imdb Top 250 Movies:"
#     @deals = DailyDeal::Deal.today
#     @deals.each.with_index(1) do |deal, i|
#       puts "#{i}. #{deal.name} - #{deal.price} - #{deal.availability}"
#     end
#   end
# 
#   def menu
# ask them to pick a number corresponding to a list of prompts. 
# Prompts might include help, quit, top 250 films, and directors of the film. 
# When they choose cast they will see a list actors scraped from imdb's top 250. Once they’ve chosen films, they will be 
# prompted again to see if they’d like to find out more about a specific film or go back to the main menu. 
#     input = nil
#     while input != "exit"
#       puts "Enter the number of the deal you'd like more info on or type list to see the deals again or type exit:"
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
#   def goodbye
#     puts "See you tomorrow for more deals!!!"
#   end

# * CLI: Def list_top movies
# * []CLI: Def initialize new movie object 
# * []Attr accessor for movie.name 
# * []Maybe for top 250 you’re keeping in all and initializing each movie separately with self.name and shoveling into all 


end 