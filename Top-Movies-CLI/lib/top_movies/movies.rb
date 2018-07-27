class Movies
  attr_accessor :name

  @@all = [ ]

def initialize(movie)
  #takes in scraped data from scraper find movies method and creates instance of movie class
  #or maybe calls on scraper class here?
  #sets movie.name to object to string 
  #pushes self into all
end 

def self.create_from_collection(movies_array)
      movies_array.each do |movie|
        movie = Movie.new(movie)
      end
end

def self.movie_included(movie)
#see if movie == movie.name.downcase after iterating through all
#use include?
end 


def self.all
  @@all
end 

#maybe option to see if your favorite movie is in top 250! 

end
