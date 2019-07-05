class TweetsController < ApplicationController
  def profile
    @tweets = Tweet.latest

    render("profile")
  end
end
