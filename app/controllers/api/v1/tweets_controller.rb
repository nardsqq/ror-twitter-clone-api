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

	# Show details of a specified tweet from the database
	def show
		@tweet = Tweet.find(params[:id])

		render json: @tweet, status: 200
	end

	# Find a specified tweet then update with the given attributes
	def update
		@tweet = Tweet.find(params[:id])

		if @tweet.update_attributes(tweet_params)
			render json: @tweet, status: 200
		else
			render json: { :errors => @tweet.errors.full_messages.as_json }, status: 400
		end
	end

	# Remove the specified tweet resource from the database
	def destroy
		@tweet = Tweet.find(params[:id])

		if @tweet.destroy
			head(204)
		else
			head(422)
		end
	end

	private

	def tweet_params
		params.permit(:tweet)
	end
end
