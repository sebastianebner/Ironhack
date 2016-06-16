require 'pry'

class Blog

	def initialize 
		@posts = []
	end

	def addToBlog(article)
		@posts.push(article)
	end

	def publishPost
		# puts @posts[0].date.to_s + "ddsdss"
		@posts = @posts.sort {|a, b| b.date <=> a.date}
		# binding.pry

		@posts.each do |x|
			
			# binding.pry

			if x.featured == true
				puts " "
				puts  "********#{x.title}********"
				puts "Date: #{x.date}"
				puts x.text
				puts "_______________________________"
				puts "FEATURED"
				puts "_______________________________"
				puts " "
			else
				puts " "
				puts  "******** #{x.title} ********"
				puts "Date: #{x.date}"
				puts x.text
				puts "_______________________________"					
				puts " "
			end
		end
	end
end

class Post
	attr_reader :date, :featured, :title, :text

	def initialize (title, date, text, featured)
		@title = title
		@date = date
		@text = text
		@featured = featured
	end

	# def title
	# 	@title
	# end

	# def text
	# 	@text
	# end

	# def featured
	# 	@featured
	# end
end

article1 = Post.new("Sonar this year!", 2016, "This is a sick article", true)
article2 = Post.new("Its summer time!", 2013, "As hot as never before", false)
article3 = Post.new("Year of the Dragon", 2009, "Roarrrr Roarrr roarrr", false)
article4 = Post.new("Germany wins the Worldcup", 2014, "finally and well deserved!", true)
article5 = Post.new("Coldest Winter in the History of the U.S.", 2015, "it is said that Eskimos are becoming jealous", false)
article6 = Post.new("This is an old article", 1999, "Content can not be determined.", false)


myBlog = Blog.new




# article1.publishPost
# article2.publishPost
# article3.publishPost
# article4.publishPost
# article5.publishPost
# article6.publishPost

myBlog.addToBlog(article1)
myBlog.addToBlog(article2)
myBlog.addToBlog(article3)
myBlog.addToBlog(article4)
myBlog.addToBlog(article5)
myBlog.addToBlog(article6)

myBlog.publishPost



