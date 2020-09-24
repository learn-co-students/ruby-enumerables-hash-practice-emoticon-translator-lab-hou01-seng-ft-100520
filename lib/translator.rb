require "yaml"# require modules here
require "pry"

def load_library(file_location)
#hash={:english=>"", :japanese=>""} # initialize a new hash
YAML.load_file(file_location) #loading file returns a hash, need to iterate over this hash and assign values to english and japanese

  YAML.load_file(file_location).each_with_object({}) do |(k, v), a|

    a[k]={}
    a[k][:english]=v[0]
    a[k][:japanese]=v[1]

    end # ends do
end #ends method

def get_japanese_emoticon(file_path=".lib/emoticons.yml",emoticons)
  # code goes here
  b={}
  key_identifier=""
  b=load_library(file_path)
  sorry_message="Sorry, that emoticon was not found"

  b.keys.find do|k,v|

      if b[k][:english]==emoticons
      return b[k][:japanese]
      end
  end
  if b.value?(emoticons)==false
      return sorry_message
    end
end



def get_english_meaning(file_path=".lib/emoticons.yml",emoticons)
  # code goes here
  b={}
  key_identifier=""
  b=load_library(file_path)
  sorry_message="Sorry, that emoticon was not found"

  b.keys.find do|k,v|

      if b[k][:japanese]==emoticons
      return b.key(b[k])
      end
  end
  if b.value?(emoticons)==false
      return sorry_message
    end
  # code goes here
end
