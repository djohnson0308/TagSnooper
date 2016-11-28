require 'twitter_search'

class HashtagController < ApplicationController

  def index
    @results = Hashtag.tweet_search(params[:q])
  end

end
