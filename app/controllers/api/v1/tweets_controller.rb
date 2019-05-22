class Api::V1::TweetsController < ApplicationController
	# List all existing tweets ordered by date created
	def index
		@tweets = Tweet.order(:created_at)

		render json: @tweets, status: 200
	end

	# Create a tweet resource
	def create
		@tweet = Tweet.new(tweet_params)

		@tweet.save

		render json: @tweet, status: 201
	end
end
