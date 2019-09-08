require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("http://flatironschool.com"))
courses = doc.css(".tout__label.heading.heading--level-4")
 
courses.each do |course|
  puts course.text.strip
end
doc.css(".site-header__hero__headline").text

p doc.css(".tout__label.heading.heading--level-4")[0].attributes
