class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title, author=nil)
  @title = title 
  @author = author  
  @@all << self
  end 
  def author_name
    if self.author
      self.author.name
    else 
    end 
  end 
  def all_posts
end 