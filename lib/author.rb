require 'pry'

class Author

    attr_reader :name
    attr_accessor :posts
    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(post)
        Post.all << post
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self} 
    end


    def add_post_by_title (post_name)
        post_name = Post.new(post_name)
        add_post(post_name)
    end

    def self.post_count
        Post.all.uniq.count
    end


end