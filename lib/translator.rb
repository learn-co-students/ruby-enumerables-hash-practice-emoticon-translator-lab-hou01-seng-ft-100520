# require modules here
require "yaml"
require 'pry'

new_hash = Hash.new
def load_library(file_name)
  emoticons = YAML.load_file(file_name)
  new_hash = {}
      emoticons.each do |key,value| 
        new_hash[key] = {}
        new_hash[key][:english] = value[0]
        #puts new_hash[key][:english]
        new_hash[key][:japanese] = value[1]
        #puts new_hash[key][:japanese]
      end
      new_hash
end

load_library('./lib/emoticons.yml')




def get_japanese_emoticon (file_name,emoticon)
  puts "this is the 1st method"
  sorry_message = "Sorry, that emoticon was not found"
      hash = load_library(file_name)
      my_hash = Hash.new
      val2 = nil
      hash.each do |key1,value1|
       my_hash = value1
       val = key1
       
           my_hash.each do |key2, value2|
                val2 = value2
                
                if emoticon == val2
                  return hash[val][:japanese]
                end
           end
     end
     puts "\n\n this is val2 #{val2} hahah\n\n"
     if val2 != emoticon
             return sorry_message
          end
      
end
get_japanese_emoticon('./lib/emoticons.yml',":'(")
puts "\n\n\n"




def get_english_meaning(file_name,emoticon)
  puts "this is the 2nd method"
  sorry_message = "Sorry, that emoticon was not found"
  hash = load_library(file_name)
  my_hash = Hash.new
  val2 = nil
  hash.each do |key1,value1|
   my_hash = value1
   val1 = key1
   
            my_hash.each do |key2, value2|
                    val2 = value2
                    if value2 == emoticon
                      return key1
                    end
            end
       end
       if val2 != emoticon
        return sorry_message
 end
end
get_english_meaning('./lib/emoticons.yml',"(Ｔ▽Ｔ)")