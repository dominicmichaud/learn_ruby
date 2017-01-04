def echo(param)
  param
end

def shout(param)
  param.upcase
end

def repeat(param, x = nil)
  y = ""

  if x.nil?
    "#{param} #{param}"
  else
    x.to_i.times do |i|
      y += "#{param} "
    end

    y.rstrip
  end
end

def start_of_word(param,x = 1)
  param[0,x]
end

def first_word(param)
  param.split(' ')[0]
end

def titleize(param)
  if !param.strip.include? " "
    param.capitalize
  else
    if param.split.length <= 2
      param.split(/ |\_|\-/).map(&:capitalize).join(" ")
    else
      stop_words = %w{a an and the or for of nor over} #there is no such thing as a definite list of stop words, so you may edit it according to your needs.
      param.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
    end
  end
end