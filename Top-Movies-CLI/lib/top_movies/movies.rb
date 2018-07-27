class Movies
  attr_accessor :name

  @@all = [ ]

def initialize(scraped_data)
  #takes in scraped data from scraper find movies method and creates instance of movie class
  #sets movie.name to object to string 
  #pushes self into all
end 

def self.all
  @@all
end 

end
