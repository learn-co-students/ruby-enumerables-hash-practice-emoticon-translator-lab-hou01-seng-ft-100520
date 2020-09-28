# require modules here
require 'pry' 
require 'yaml'

def load_library(emoticon_file)
  emoticon_hash = YAML.load_file(emoticon_file)
  final_hash = {}
  emoticon_hash.each do |(key, value)|
#    final_hash.push({key => {:english => value[0], :japanese => value[1]}})
    final_hash[key] = {}
    final_hash[key][:english] = value[0]
    final_hash[key][:japanese] = value[1]
  #  binding.pry
  end
  final_hash
end

def get_japanese_emoticon (emoticon_file, english_emot)
  temp_hash = load_library(emoticon_file)
  apology_string = "Sorry, that emoticon was not found"
  temp_hash.each do |key,value|
    nest_hash = value
#    binding.pry
    nest_hash.each do |nest_key, nest_value|
#     binding.pry
      if nest_hash[:english] == english_emot
        binding.pry
        return nest_hash[:japanese] 
      end
    end
  end
  apology_string
end

def get_english_meaning(emoticon_file, japan_emot)
  temp_hash = load_library(emoticon_file)
  apology_string = "Sorry, that emoticon was not found"
  temp_hash.each do |key,value|
    temp_hash[key].each do |nest_key,nest_value|
  #    binding.pry
      if nest_value == japan_emot
        return key.to_s 
  #      binding.pry
      end
 #     binding.pry 
    end
  end
  apology_string
end


