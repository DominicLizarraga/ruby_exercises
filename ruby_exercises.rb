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

# str = '1234'

# def increment_value(str)
#   first_segment = str
#   last_segment = str.next[first_segment.length - 1]
#   return first_segment + last_segment
# end

# p increment_value(str)


# Extract a Random Element from a Collection of Arrays Nested in a Hash in Ruby

# menu = {
#   'appetizer': ['Chips', 'Quesadillas', 'Flatbread'],
#   'entrees': ['Steak', 'Chicken', 'Lobster'],
#   'dessers': ['Cheescake', 'Cake', 'Cupcake']
# }

# def daily_special hash
#   array = []
#   hash.map do |menu_item|
#     array << menu_item.last
#   end
#   puts array.flatten.sample
# end

# daily_special menu


# Coding Exercise: Word Counting and Reporting in Ruby


# str = "- the quick brown fox / jumped over the lazy fox"

# class String
#   def total_words
#     scan(/[\w]+/).count
#   end

#   def word_list
#     list = Hash.new(0)
#     downcase.scan(/[\w]+/) do |word|
#       list[word] += 1
#     end
#     list
#   end
# end

# p str.total_words
# p str.word_list


# Build a Dynamic Sum Method in Ruby

# array = (1..10).to_a

# def sum_generator input
#   sum = 0
#   1.upto(input) do |num|
#     sum += num
#   end
#   p sum
#   # 1.upto(input).inject(&:+)
# end


# sum_generator 10


# Return Odd Elements from an Array in Ruby

# arr = Array(1..10)

# class Array
#   def odd_selector array
#     odds = []
# #     select(&:odd?) alternative way
#     array.select do |element|
#       new_arr << element if element.odd?
#     end
#     odds
#   end
# end

# Finding the Average Value in an Array in Ruby

# arr = [100, 50, 75]

# def average array
#   sum = array.reduce(:+)
#   size = array.size
#   return sum / size
# end

# p average arr

# class Array
#   def average
#     sum = self.reduce(:+)
#     size = self.size
#     return sum / size
#   end
# end
# p arr.average

# How to Rotate Elements in an Array in Ruby

# arr = [1, 2, 3]

# # expected [3, 2, 1]

# def array_ratotaion array, num
#   array.rotate(num)
# end

# Calculate the Number of Days Between Two Days in Ruby

# Count days btw Christmas and July 1, 2004 (Ruby release)

# def day_counter
#   Integer(Date.new(2016, 12, 25) - Date.new(2004, 7, 1))
# end

# Coding Interview Question: Build a Dice Validator in Ruby

#   def valid_dice? d1, d2
#     [d1, d2].all_between?(1, 6) ? true : false
#   end


# class Array
#   def all_between? top, bottom
#     self.each do |e|
#       return false unless e.between? top, bottom
#     end
#     true
#   end
# end

# Build a Multiplication Table Generator in Ruby

# def mutiplication_table(num)
#   hash = Hash.new
#   products = []
#     1.upto(num) do |i|
#       (1..10).each do |e|
#         products.push(i * e)
#       end
#       hash[i] = products
#       products = []
#     end
#   puts hash
# end

# # iterate over the first colecction (1.upto(num))
# # iterate over current elements (this case range)
# # add the multiplication to the empty array
# # add given iteration to the new hash
# # clear out the array
# # return final hash

# mutiplication_table 30


# Manually Removing Duplicates from an Array in Ruby

# class Array 
#   def remove_duplicate 
#     self.each_with_object([]) do |element, array|
#       array << element unless array.include?(element)
#     end
#   end
# end

# p [1, 3, 3, 4, 2, 2].remove_duplicate



# Rebuild the include? Method in Ruby to Check for Array Values




# iterate over array
class Array
  def does_it_have? item
    each do |element|
    # ask each element if it matches to the input
      # puts element == item ? "true" : "false"
      return true if element == item
    end
    false
  end
end

arr = [1, 3, 50, 67]
p arr.does_it_have? 12













