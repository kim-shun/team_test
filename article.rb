class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def author
    @author
  end

  def title
    @title
  end

  def content
    @content
  end

end

article = Article.new("高橋", "今日の天気", "晴れ")
puts article.author
puts article.title
puts article.content




# class Article
#   def author(author)
#     author
#   end

#   def title(title)
#     title
#   end

#   def content(content)
#     content
#   end
# end

# article = Article.new
# puts article.author("田中")
# puts article.title("今日の天気")
# puts article.content("晴れ")




