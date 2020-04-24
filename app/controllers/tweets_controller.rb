class TweetsController < ApplicationController
  def index
    if current_user
      @tweets = current_user.tweets

      render :index
    else
      redirect_to new_user_session_path
    end
  end
end
