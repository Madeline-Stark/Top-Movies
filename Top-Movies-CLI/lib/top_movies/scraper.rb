require "nokogiri"
require "open-uri"


class Scraper


  def initialize
    self.scrape_top_page
  end


  def self.scrape_top_page
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/top"))
    new_array = []
    doc.css('td.titleColumn a').each_with_index do |movie, index|
      movie = doc.css('td.titleColumn a')[index].text
      new_array << movie
    end
    new_array
  end


end
