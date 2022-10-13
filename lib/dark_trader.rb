require 'rubygems'
require 'json'
require 'nokogiri'
require 'open-uri'

def scrapper
  return page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all'))
end

def crypto(page)
  array_name = []
  array_value = []
  final_array = []
  hash = {}

  name_of_crypto = page.xpath('//tr//td[3]') # récupère tout le HTML 
  value_of_crypto = page.xpath('//tr//td[5]')

  name_of_crypto.each{ |name| 
    array_name << name.text      # tri le HTML et récupère la partie text
  }
  value_of_crypto.each{ |price|
    array_value << price.text
  }

  i = 0
  loop do
  hash = { array_name[i] => array_value[i] }
  break if array_value[i] == nil
  final_array.append(hash)
  i += 1
  end

  return final_array
end

