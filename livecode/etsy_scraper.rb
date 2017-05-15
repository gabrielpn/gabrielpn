# scraping_etsy.rb
require "open-uri"
require "nokogiri"

def search_from_etsy(search)

  # 1. We get the HTML file thanks to open-uri
  file = open("https://www.etsy.com/search?q=#{search}")

  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(file)

  # 3. We search every elements with class="card" in our HTML doc
  ideas = []
  doc.search(".card").each do |card|
    # 4. for each element found, we extract its title and print it
    title = card.search(".card-title").text.strip
    price = card.search(".card-price").text.strip.match(/(^\d+,\d{2}) €/)[1].gsub(",", ".").to_f
    ideas << {title: title, price: price}
  end

  return ideas
end
