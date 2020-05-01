require 'open-uri'
require 'nokogiri'

url = "https://www.toutoupourlechien.com/race-de-chien.html"
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)
breeds = []
html_doc.search('.chien-title').each do |element|
  breeds << element.text.strip
end
