class TweetsController < ApplicationController
  def profile
    @tweets = Tweet.order(:created_at)

    render("profile")
  end
end
