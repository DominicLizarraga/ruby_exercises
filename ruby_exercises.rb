# Parsing a String with Multiple Matches in Ruby
# string_array = [
#   "Web IconHTML & CSS100%",
#   "Command LineLearn the Command Line100%",
#   "Ruby IconRuby50%",
#   "Rails IconLearn Ruby on Rails100%",
#   "Git IconLearn Git100%",
#   "SassLearn Sass20%",
#   "JQuery IconjQuery1%",
#   "Angular JSLearn AngularJS 1.X100%",
#   "Javascript IconLearn JavaScript55%"
# ]


# def string_parser(array)
#   new_array = []
#   array.each do |element|
#     new_array << element.scan(/\d+/).last.to_i
#   end
#     puts new_array
# end

# string_parser(string_array)

# Generate an Array of Random Numbers in Ruby

# def random_numbers(num)
#   Array.new(num) { rand(1000) }
# end

# puts random_numbers(2)


# Mapping Array Data in Ruby Using Zip and Splat


# headers = [
#   '1B',
#   '2B',
#   '3B',
#   'SS',
#   'C',
#   'P',
#   'LF',
#   'CF',
#   'RF'
# ]

# astros = [
#   'Gurriel',
#   'Altuve',
#   'Bregman',
#   'Correa',
#   'Gattis',
#   'Keuchel',
#   'Beltran',
#   'Springer',
#   'Reddick'
# ]

# rangers = [
#   'Fielder',
#   'Andrus',
#   'Odor',
#   'Beltre',
#   'Lucroy',
#   'Darvish',
#   'Gomez',
#   'Choo',
#   'Mazara'
# ]

# def position_filter(headers, *data)
#   p headers.zip(*data)
# end

# position_filter(headers, astros, rangers)




# Coding Interview Question: Reversing the Words in a String in Ruby


# string ="dog lazy the over jumped fox brown quick The"

# # def sentence_revers(string)
# #   string.split.reverse.join(" ")
# # end

# # p sentence_revers string

# Creating a Palindrome Method in Ruby

# def palindrome? word
#   normal_order = word.downcase
#   reversed = word.reverse.downcase
#   puts normal_order == reversed ? "Palindrome!" : "👻"
# end

# palindrome?("Tacocat")

# Leap years in 20th century
# require 'date'

# years = (1900..1999).to_a

# def leap_years(array)
#   leap_years = []
#   array.select do |year|
#     current_year = Date.new(year)
#     leap_years << year if current_year.leap?
#   end
#   p leap_years
# end

# leap_years(years)

# Converting a Hash to a URL Friendly String in Ruby


# class Hash
#   def hash_to_url
#     self.map { |i| i * "=" } * "&"
#   end
# end

# hash_into_url = {
#   topic: "baseball",
#   team: "astros",
#   whatever: "okok"
#   }



# puts hash_into_url.hash_to_url


# Build a Currency Converter in Ruby
# ¥
# $
# €

# def currency_coverter(quantity, currency)

#   case currency
#   when "USD"
#     then "$%.2f" % quantity
#   when "JP"
#     then "¥%.0f" % quantity
#   when "EU"
#     then ("€%.2f" % quantity).gsub(".", ",")
#   end

# end


# puts currency_coverter(1000, "USD")

# puts currency_coverter(1000, "JP")

# puts currency_coverter(1000, "EU")

# def title_creator title
#   heading = %w(h1 title_placeholder h1)
#   heading[1] = title
#   "<%s>%s</%s>" % heading
# end

# puts title_creator "hello, world!"


# Refinements to Adds Methods to Customized Classes
# module Rubycontent
#   refine String do
#     def commentize
#       "# #{self}"
#     end
#   end
# end

# class ContentController
#   using Rubycontent

#   def initialize(word)
#     @word = word
#   end

#   def hidden_content
#     @word.commentize
#   end
# end

# cc = ContentController.new("This is a comment in RoR")
# puts cc.hidden_content

# Generate the Alphabet in Ruby

# def generate_alphabet
#   p ("a".."z").to_a
# end

# generate_alphabet


# class Restaurant
#   attr_reader :average_rating, :city

#   def initialize(city, name)
#     @city = city
#     @name = name
#     @number_of_ratings = 0
#     @sum_of_ratings = 0
#   end

#   # TODO: implement .filter_by_city and #rate methods
#   def self.filter_by_city(restaurants, city)
#     restaurants.select do |restaurant|
#       restaurant.city == city
#     end
#   end

#   def rate(rating)
#     @number_of_ratings += 1
#     @sum_of_ratings += rating
#     @average_rating =  @sum_of_ratings.to_f / @number_of_ratings
#   end
# end

# jules_verne = Restaurant.new("paris", "Jules Verne")
# bluebird = Restaurant.new("london", "Bluebird")
# daniel = Restaurant.new("new york", "Daniel")
# restaurants = [jules_verne, bluebird, daniel]
# p Restaurant.filter_by_city(restaurants, "new york")




# Add the Next Letter or Number in a String Sequence in Ruby

str = '1234'

def increment_value(str)
  first_segment = str
  last_segment = str.next[first_segment.length - 1]
  return first_segment + last_segment
end

p increment_value(str)



























