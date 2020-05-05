# require modules here

def load_library
  # code goes here
  h = YAML.load_file('emoticons.yml')
  output = {}
  h.each({}) do |memo, (key, value)|
    p = {
      :english => value[0],
      :japanese => value[1],
      output[key] = p
    }
    memo
  end
  output

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
