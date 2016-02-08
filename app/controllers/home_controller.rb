class HomeController < ApplicationController
  def index
    @popular = Instagram.tag_recent_media('itstoughouthere')
  	twitter = TwitterClient.new(client_type: 'rest').setup_client
	   @tweets = twitter.search("#love", result_type: "mixed").take(2)
	end
end





