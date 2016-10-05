class Blog

  @@every_blogpost = []
  @@total_blogposts = 0

  def self.every
    @@every_blogpost
  end

  def self.add(array)
    @@every_blogpost << array
    @@total_blogposts +=1
  end

  def self.publish
    @@every_blogpost.each do |post|
      puts "Title: #{post.title}"
      puts "Author: #{post.author}"
      puts "Content: #{post.content}"
      puts "Created: #{post.publish_date}"
    end
  end

end

class BlogPost < Blog

  attr_accessor :title, :author, :publish_date, :content

def self.create
  post = new
  puts "Title:"
  post.title = gets.chomp
  puts "By:"
  post.author = gets.chomp.capitalize
  puts "Enter content:"
  post.content = gets.chomp
  post.publish_date = Time.now
  post.save
  puts "Ready to create a new blog?  [Y/N]"
    answer = gets.chomp.downcase
  if answer == "y"
    create
  end
end

def save
  BlogPost.add(self)
end

end

BlogPost.create
every_blogpost = BlogPost.every
puts every_blogpost.inspect
BlogPost.publish
