class HomeController < ApplicationController
  def index
    @popular = Instagram.tag_recent_media('itstoughouthere')
  end
end