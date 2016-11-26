require 'twitter_search'

class HashtagController < ApplicationController

  def index
    unless params[:q].nil?
      @hashtags = $client.search(params[:q]).take(2)
    end
  end

end
