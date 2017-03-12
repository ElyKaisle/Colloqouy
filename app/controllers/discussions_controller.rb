class DiscussionsController < ApplicationController
	def post
		@discussions = Discussion.all 
	end

	def createpost
	    @discussions = Account.new()
	    @discussions.topic_name = params[:discussion][:topic_name]
	    @discussions.topic_description = params[:discussion][:topic_description]
	    @discussions.save
	    redirect_to "/discussions/#{@discussions.id}"
	end
end
