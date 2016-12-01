class DashboardController < ApplicationController
  def index
    @new_topic = Topic.new
    @topic = Topic.find_by(name: params[:topic_name]) || Topic.first
    #binding.pry
  end

  def settings
  end

  def hashtags
  end
end
