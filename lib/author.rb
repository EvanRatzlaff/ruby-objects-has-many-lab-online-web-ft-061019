class Author 
  attr_accessor :name

  @@post_count = "0".to_i 

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end