class PostsController < ApplicationController

	def new
	end 
	
	def index
		@posts = Post.all
	end
	
	def create
		#render text: params[:post].inspect
		@post = Post.new(post_params)
		@post.save
		redirect_to @post
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	private
		def post_params
			params.require(:post).permit(:title, :text)
		end
		
	
end

#render text: params[:post].inspect
# The render method here is taking a very simple hash with a key of text
# and value of params[:post].inspect. The params method is the object 
# which represents the parameters (or fields) coming in from the form. 
# The params method returns an ActiveSupport::HashWithIndifferentAccess object, 
# which allows you to access the keys of the hash using either strings or symbols. 
# In this situation, the only parameters that matter are the ones from the form.

# Rails has several security features that help you write secure applications, 
# and you're running into one of them now. This one is called strong_parameters, 
# which requires us to tell Rails exactly which parameters we want to accept in our 
# controllers. In this case, we want to allow the title and text parameters, so change 
# your create controller action to look like this:
#params.require(:post).permit(:title, :text)

# We use Post.find to find the post we're interested in. We also use an instance 
# variable (prefixed by @) to hold a reference to the post object. We do this because 
# Rails will pass all instance variables to the view.

