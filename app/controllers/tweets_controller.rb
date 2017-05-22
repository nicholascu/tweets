class TweetsController < ApplicationController

	def index
		@username = params[:search]
		@twitter_user = $twitter.user(@username ||= "StackCommerce")
		@twitter_timeline = $twitter.user_timeline(@twitter_user, {count:25})
		Rails.cache.fetch(@twitter_timeline, :expires_in => 5.minutes)
	rescue Twitter::Error::NotFound => e
		flash[:notice] = "USER NOT FOUND"
		redirect_to(:action => 'index')
	end

	def show

	end

end


# Parameters: {"utf8"=>"✓", "search"=>"elonmusk", "commit"=>"Search"}