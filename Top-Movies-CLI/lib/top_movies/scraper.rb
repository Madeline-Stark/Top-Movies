class Scraper

  def self.find_movies
    #to list out each top 250 movie and iterate over each to create movie objects 

  end 

  def self.scrape_top_page
    doc = Nokogiri::HTML(open(https://www.imdb.com/chart/top))
    binding.pry
    # new_array = []
    # doc.css(".student-card").each_with_index do |student, index|
    #   student_name = doc.css(".student-name")[index].text
    #   location = doc.css(".student-location")[index].text
    #   url = doc.css("a")[index + 1].attributes["href"].value #+1 b/c first one is logo, not link
    #   new_array << {:name => student_name, :location => location, :profile_url => url}
    # end
    # new_array
  end


end
