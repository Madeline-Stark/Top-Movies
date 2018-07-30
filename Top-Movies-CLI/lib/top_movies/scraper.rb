require "nokogiri"
require "open-uri"


class Scraper
  attr_accessor :name

  # Questions for tech coach:
    # ask for help on accessing pry in this lab 
    # help with scraping
    # and then finding the right css selectors to find movie names and directors
    # and also ask if I’m going to be able to access the methods of other classes the way it is set up now
    # once scraper is working, make sure to test cli/movies/how everything works together 


  def initialize
    self.scrape_top_page
  end

  def self.find_movies
    #to list out each top 250 movie and iterate over each to create movie objects
    #or maybe this functionality is in scrape_top_page method.

  end

  def self.scrape_top_page
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/top")) #access in irb
    binding.pry
    new_array = []
    #doc.css('td.titleColumn a')[100].text 
    # doc.css(parameters).each do |movie|
    #   self.name = doc.css(parameters)
    #
    #   new_array << self
    #end
    new_array
  end


    # new_array = []
    # doc.css(".student-card").each_with_index do |student, index|
    #   student_name = doc.css(".student-name")[index].text
    #   location = doc.css(".student-location")[index].text
    #   url = doc.css("a")[index + 1].attributes["href"].value #+1 b/c first one is logo, not link
    #   new_array << {:name => student_name, :location => location, :profile_url => url}
    # end
    # new_array


end
