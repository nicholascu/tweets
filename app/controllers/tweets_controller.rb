class TweetsController < ApplicationController
	def index
		@username = params[:search]
		@twitter_user = $twitter.user(@username)
		@twitter_timeline = $twitter.user_timeline(@twitter_user, {count:25})
		expires_in 5.minutes, :public => true
	end

	def show
		@twitter_timeline = $twitter.user_timeline(@twitter_user, {count:25})
		expires_in 5.minutes, :public => true
	end

	# def create
	# 	 render plain: params[:tweets].inspect
	# end
end


# Parameters: {"utf8"=>"✓", "search"=>"elonmusk", "commit"=>"Search"}