class HomeController < ApplicationController
  def index
    @popular = Instagram.tag_recent_media('itstoughouthere')
  	twitter = TwitterClient.new(client_type: 'rest').setup_client
	   @tweetsT = twitter.search("#itstoughouthere", result_type: "mixed", filter: "images").take(2)
	end
end





