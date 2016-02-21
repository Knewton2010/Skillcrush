class Blog
	@@num_blogs = 0
	@@everything = Array.new

	def publish
		puts @@everything
	end
end



class BlogPost < Blog
	def initialize
		@@num_blogs +=1
		@title = "Title"
		@content = "Content"
		@author = "Blogger"
		@publish_date = Time.now
	end

	attr_accessor :title, :content, :author, :publish_date

	def publishing
		@@everything.push(@title, @content, @publish_date, @author)
	end

end


def continue_blogging
	puts "do you want to create another blog post? [Y/N]"
	answer = gets.chomp.downcase
	if answer == 'y'
		return true
	elsif answer == 'n'
		return false
	else
		"invalid input"
		continue_blogging
	end
end

while continue_blogging
	next_blog = BlogPost.new
	
	print "Title: "
	next_blog.title = "Title: " + gets

	print "Username: " 
	next_blog.author = "By: " + gets

	print "Post: "
	next_blog.content = gets

	next_blog.publishing
end

next_blog.publish