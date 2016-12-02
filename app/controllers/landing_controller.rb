require 'twitter_search'

class LandingController < ApplicationController
  def index
    if params[:q]
      @results = Hashtag.tweet_search(params[:q]).take(15)
    end
  end

  private
  def hashtag_params
    params.require(:hashtags).permit(:hashtag_values, :name, :count)
  end
end
