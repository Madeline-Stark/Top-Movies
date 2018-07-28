class Movies
  attr_accessor :name

  @@all = [ ]

def initialize(movie)
  @name = movie
  @@all << self
end

def self.create_from_collection(movies_array)
      movies_array.each do |movie|
        movie = Movie.new(movie)
      end
end

def self.movie_included(movie)
  if self.all.include?(movie.name.downcase)
    puts "Congrats! Your favorite movie is a fan favorite!"
  else
    puts "Sorry! You chose an unpopular choice"
  end
#see if movie == movie.name.downcase after iterating through all
#use include? or do each do and set answer to variable?
# favorite = nil
# self.all.each do |film|
#   if film.downcase == movie.downcase
#     favorite = film.downcase
#   end
# if favorite != nil
#   puts "Congrats! Your favorite movie is a fan favorite!"
# else
#   puts "Sorry! You chose an unpopular choice"
# end

end


def self.all
  @@all
end


end
