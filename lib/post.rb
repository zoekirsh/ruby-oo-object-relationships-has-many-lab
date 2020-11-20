require 'pry'


class Post

    attr_reader :author, :title
    @@all = []

    def initialize(title)
        @title = title
        @author
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        self.title
    end

    def author= (author)
        @author = author
        Author.all << self
    end

    def author_name
        @author.name if @author
    end

end