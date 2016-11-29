require 'twitter_search'

class HashtagController < ApplicationController

  def index
    unless params[:q].nil?
      @results = Hashtag.tweet_search(params[:q])
      #@search = Search.create(start: @results[start], end: @results[end])
      # loop
        #@search_hashtags = @search.hashtags.create(name: (loop_variable)[key], count: [value])
      # end loop
    end
  end

end
