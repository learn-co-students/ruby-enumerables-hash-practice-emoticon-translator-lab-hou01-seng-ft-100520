# require modules here
require 'yaml'
require 'pry'
def load_library(file_path)
  # code goes here
    new_hash = {}
    final_hash = YAML.load_file(file_path) 
    final_hash.each do |(key, value)|
    #binding.pry
    
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
    
    end
    new_hash
end

def get_japanese_emoticon
  # code goes here
 
    
  
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  
   final_hash = YAML.load_file(file_path, emoticon) 
    final_hash.each do |key, value|
    if new_hash[key][:japanese]
      puts new_hash[key][:english]
    end
  end
end