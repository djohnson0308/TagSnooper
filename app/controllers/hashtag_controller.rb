require 'twitter_search'

class HashtagController < ApplicationController

  def index
    unless params[:q].nil?
      @results = Hashtag.tweet_search(params[:q])
    end
  end

end
