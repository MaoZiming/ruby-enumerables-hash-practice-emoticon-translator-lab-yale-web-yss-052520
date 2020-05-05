# require modules here

def load_library(address = 'emoticons.yml')
  # code goes here
  h = YAML.load_file(address)
  output = {}
  h.each({}) do |memo, (key, value)|
    p = {
      :english => value[0],
      :japanese => value[1],
      output[key] => p
    }
    memo
  end
  output

end

def get_english_meaning(address, emoji)
  # code goes here
  h = load_library(address)

  h.each({}) do |memo, (key, value)|
    if value[1] == emoji

      return key.to_s
    end
  end

end


def get_japanese_emoticon (address, emoji)
  # code goes here
  h = load_library(address)

  h.each({}) do |memo, (key, value)|
    if value[0] == emoji

      return value[1]
    end
  end
end
