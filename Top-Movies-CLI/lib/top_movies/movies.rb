module TopMovies
class Movies
  attr_accessor :title, :date

  @@all = [ ]


def initialize(movie_hash)
  movie_hash.each {|key, value| self.send(("#{key}="), value)}
  @@all << self
end

def self.create_from_collection(movie_hash)
      movie_hash.each do |movie|
        movie = self.new(movie)
      end
end

def self.make_movies
    movie_hash = Scraper.scrape_index_page
    self.create_from_collection(movie_hash)
end

def self.movie_included(movie)
  if self.all.include?(movie.titleize)
    puts "Congrats! Your favorite movie is a fan favorite!"
  else
    puts "Sorry! You chose an unpopular movie."
  end
end


def self.list_movies
  Movies.all.each_with_index do |movie, index|
    puts "#{index + 1}.) #{movie.title}"
  end
end


def self.show_movie_number(number)
  list_movies[number - 1]
end

def self.show_movie_date(movie)

end


def self.all
  @@all
end

end
end
