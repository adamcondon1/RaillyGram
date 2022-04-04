require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open('https://example.com'))

puts doc