require 'yaml'
require 'pry'

def load_library (emotes)
  final = {}
  YAML.load_file(emotes).each do |key, value|
    final[key] = {}
    final[key][:english] = value[0]
    final[key][:japanese] = value[1]
    #binding.pry
  end
  final
end

def get_japanese_emoticon (emotes, emoticon)
  load_library(emotes).each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
      return "Sorry, that emoticon was not found"
    #  binding.pry
    end
  end
  return "Sorry, that emoticon was not found"
end


  # code goes here


def get_english_meaning(emotes, emoticon)
  load_library(emotes).each do |key, value|
    if value[:japanese] == emoticon
      return key
      return "Sorry, that emoticon was not found"
    #  binding.pry
    end
  end
  return "Sorry, that emoticon was not found"
end
