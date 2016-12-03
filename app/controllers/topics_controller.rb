class TopicsController < ApplicationController
  before_action :authorize, only: [:new]

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id
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

  def destroy
    Topic.find_by(name: delete_topic_params).destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Topic was successfully deleted.' }
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:name)
  end

  def delete_topic_params
    params.require(:name)
  end
end
