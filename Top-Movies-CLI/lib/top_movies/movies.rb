class Movies
  #attr_accessor :name

  @@all = [ ]

def initialize(movie)
  #@name = movie
  @@all << self
end

def self.create_from_collection(movies_array)
      movies_array.each do |movie|
        movie = Movie.new(movie)
      end
end

      

def self.movie_included(movie)
  if self.all.include?(movie)
    puts "Congrats! Your favorite movie is a fan favorite!"
  else
    puts "Sorry! You chose an unpopular movie."
  end
end


def self.all
  @@all
end

# For testing:
# all = [ ]
#       new_array.each do |movie|
#         all << movie
#       end #works!
#       
#       film = "Superbad"
#       film = "The Godfather"
#       film = "Catch Me If You Can"
#         if all.include?(film)
#           puts "Congrats! Your favorite movie is a fan favorite!"
#         else
#           puts "Sorry! You chose an unpopular movie."
#         end #works! 


end
