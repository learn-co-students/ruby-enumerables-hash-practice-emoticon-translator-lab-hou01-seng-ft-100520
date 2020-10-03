# require modules here
require "yaml"
require 'pry'
new_hash = Hash.new

def load_library(file_name)
  new_hash = YAML.load_file(file_name)
    new_array = Array.new
  array3 = {:english =>{},
          :japanese =>{}}
          #binding.pry
  puts "this second method worke?!\n\n"
      new_hash.each do |key,value| 
        puts "this is the key #{key} and this is the emoticon #{value} "
        new_hash[key] = array3
        new_array.push(value)  
        #binding.pry
      end
        
      #  puts "this should print out new hash and sub category angel"
        new_hash.each_key {|key1|
              new_hash[key1].each_key {|key2| 

              #puts key2.to_s
              # if key2 == "english"
               #     new_hash[key1][key2] = new_array[n][0]
               #else
               #     new_hash[key1][key2] = new_array[n][1]
               #end
               #binding.pry
              }
        }
        
        
  puts "\n\n\n this is the array"
  p new_array[0][0]
  puts "\n\n\n and this is the new hash"
  p new_hash
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon
  
  
end
get_japanese_emoticon


def get_english_meaning
  # code goes here
end