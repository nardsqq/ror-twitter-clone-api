class TweetsController < ApplicationController
  def index
    @tweets = Tweet.latest

    render :index
  end
end
