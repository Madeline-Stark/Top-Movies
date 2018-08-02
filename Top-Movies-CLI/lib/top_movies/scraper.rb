require "nokogiri"
require "open-uri"
require "pry"

module TopMovies
class Scraper
  attr_accessor :title, :date


  def initialize
    self.scrape_index_page
  end


  def self.scrape_index_page
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/top"))
    new_array = []
    doc.css('td.titleColumn a').each_with_index do |movie, index|
      movie_title = doc.css('td.titleColumn a')[index].text
      movie_date = doc.css('span.secondaryInfo')[5].text
      new_array << {:title => movie_title.titleize, :date => movie_date}
      #each individual movie should be its own hash with key value pairs like title, director, lead actors etc
      #then when instantiating movie can use data from hash to set attributes(pass them into initialize)
      #and be able to call on cli
      #can also initialize movie here
      #important that were initializing objects with attributes
    end
    new_array
  end


end
end
