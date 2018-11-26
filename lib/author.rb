require 'pry'

class Author

  attr_accessor :name, :title

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(new_title)
    new_title.author = self
    self.posts << new_title
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    # binding.pry
    self.add_post(new_title)
  end

  def self.post_count
    #binding.pry
    Post.all.length
  end


end
