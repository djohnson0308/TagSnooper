class TopicsController < ApplicationController
  before_action :authorize, only: [:new]

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user[0].id
    if @topic.save
      redirect_to dashboard_path
    else
      redirect_to new_topic_path
    end
  end

  def get_hashtags
    params[:topicName]
    redirect_to dashboard_path(topic_name: params[:topicName])
  end

  private
  def topic_params
    params.require(:topic).permit(:name)
  end
end
