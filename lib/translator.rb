# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  emoticon = YAML.load_file(file_path)
  result = emoticon.each_with_object({}) do |(key, value), final_hash| 
    if !final_hash[key] 
      final_hash[key] = { 
        :english => value[0],
        :japanese => value[1] 
      } 
    end 
    result 
  end
end

def get_japanese_emoticon(file_path, english_emoicons)
  # code goes here 
  emoticon = load_library('./lib/emoticons.yml')
  emoticon.each { |meaning, idioms|
    return idioms[:japanese] if idioms[:english] == english_emoicons
  }
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, japanese_emoticons)
  # code goes here
  emoticon = load_library('./lib/emoticons.yml')
  emoticon.each { |meaning, idioms|
    return meaning if idioms[:japanese] == japanese_emoticons
  }
  "Sorry, that emoticon was not found"
end