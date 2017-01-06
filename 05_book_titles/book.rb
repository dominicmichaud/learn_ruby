class Book
  attr_accessor :title

  def title
    @title = titleize(@title)
  end

  private
  def titleize(param)
    if !param.strip.include? " "
      param.capitalize
    else
      if param.split.length <= 2
        param.split(/ |\_|\-/).map(&:capitalize).join(" ")
      else
        stop_words = %w{a in an and the or for of nor over} #there is no such thing as a definite list of stop words, so you may edit it according to your needs.
        param.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
      end
    end
  end
end
