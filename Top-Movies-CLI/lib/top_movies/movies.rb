module TopMovies
class Movies
  attr_accessor :title

  @@all = [ ]

def initialize(title, director, actors)
  @title = title.titleize
  @@all << self
end

def self.create_from_collection(movies_array)
      movies_array.each do |movie|
        movie = self.new(title, director, actors)
      end
end

def self.make_movies
    movies_array = Scraper.scrape_index_page
    self.create_from_collection(movies_array)
end

def self.movie_included(movie)
  if self.all.include?(movie) #do movie.strip.downcase to all and to movie?
    puts "Congrats! Your favorite movie is a fan favorite!"
  else
    puts "Sorry! You chose an unpopular movie."
  end
end

#methods for list director and list top actors and make option in cli

def self.list_movies
  Movies.all.each_with_index do |movie, index|
    puts "#{index + 1}.) #{movie}"
  end
  #right now is putting out actual object instead of movie.title which is what it should
end


def self.show_movie_number(number)
  list_movies[number - 1]
end


def self.all
  @@all
end

end
end
