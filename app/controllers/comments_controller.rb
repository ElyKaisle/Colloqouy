class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:comment))
		@comment.user_id = current_user.id if current_user
		@comment.save
		redirect_to post_path(@post)

	end

	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end

	def update
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])

		if @comment.update(params[:comment].permit(:comment))
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

 	def upvote
  	  @comment = Comment.find(params[:id])
  	  @comment.upvote_by current_user
  	  redirect_to :back
	end

 	def downvote
  	  @comment = Comment.find(params[:id])
  	  @comment.downvote_by current_user
  	  redirect_to :back
 	end	

	def unupvote
	  @post = Comment.find(params[:id])
	  @post.unupvote_by current_user
	  redirect_to :back
	end

	def undownvote
	  @post = Comment.find(params[:id])
	  @post.undownvote_by current_user
	  redirect_to :back
	end
end
