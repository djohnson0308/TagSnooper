require 'twitter_search'

class HashtagController < ApplicationController

  def index
    if params[:q]
      @results = Hashtag.tweet_search(params[:q]).take(15)
      # @search = Search.create(start: @results[start], end: @results[end])
      # loop
        #@search_hashtags = @search.hashtags.create(name: (loop_variable)[key], count: [value])
      # end loop
    end
  end

  def batch_create
    params[:hashtag][:hashtags].each do |hashtag|
      Hashtag.create(hashtag)
    end
  end

  private
  def hashtag_params
    params.require(:hashtags).permit(:hashtags, :name, :count, :value)
  end

end
