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
  if self.all.include?(movie) #do movie.strip.downcase to all and to movie? 
    puts "Congrats! Your favorite movie is a fan favorite!"
  else
    puts "Sorry! You chose an unpopular movie."
  end
end

def self.list_movies
  new_array = []
  Movies.all.each_with_index do |movie, index|
    newer_array << ("#{index + 1}.) #{movie}")
  end
  new_array
end


def self.show_movie_number(number)
  list_movies #will we have access to new_array outside of list_movies method? maybe list_movies[number - 1]
  new_array[number - 1]
end


def self.all
  @@all
end

end
