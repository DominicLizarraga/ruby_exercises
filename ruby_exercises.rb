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

def random_numbers(num)
  Array.new(num) { rand(1000) }
end

puts random_numbers(2)



















