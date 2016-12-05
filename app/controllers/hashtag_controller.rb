require 'twitter_search'

class HashtagController < ApplicationController

  def index
    if params[:hashtag_search]
      @results = Hashtag.tweet_search(params[:hashtag_search]).take(15)
    end
  end

  def batch_create
    topic_id = params[:topic].to_i
    params[:hashtag_values].each do |hashtag|
      Hashtag.create!(name: hashtag, count: params[hashtag].to_i, topic_id: topic_id)
    end
    redirect_to dashboard_path
  end

  private
  def hashtag_params
    params.require(:hashtags).permit(:hashtag_values, :name, :count)
  end

end
