class PostsController < ApplicationController
	before_filter :authenticate_user!, :only => [:new, :create]

	def index
		@posts = Post.current.order('created_at desc').paginate(:page => params[:page])
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
		@comment.post = @post
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post].permit(:title, :excerpt, :content, :category_ids => []))
		@post.user = current_user

		if @post.save
			flash[:notice] = 'Post Created'
			redirect_to @post
		else
			flash[:alert] = @post.errors.full_messages.join(", ")
			render 'new'
		end	
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post].permit(:title, :excerpt, :content, :category_ids => []))
			flash[:notice] = "Post Updated"
			redirect_to @post
		else
			flash[:alert] = @post.errors.full_messages.join(", ")
			render "edit"
		end
	end
end
