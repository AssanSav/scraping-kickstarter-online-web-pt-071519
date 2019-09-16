# require libraries/modules here
require 'nokogiri'
require 'pry'

 
def create_project_hash
<<<<<<< HEAD
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
 
=======
>>>>>>> 84e5c4f50bff605a3e9aabe99a78c6cbea8c8a33
  projects = {}
 
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
<<<<<<< HEAD
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
    #binding.pry
  end
  projects
end
=======
    projects[title.to_sym] = {}
    binding.pry
  end
  projects
end
# create_project_hash
# project.css(".location-name").text
>>>>>>> 84e5c4f50bff605a3e9aabe99a78c6cbea8c8a33
