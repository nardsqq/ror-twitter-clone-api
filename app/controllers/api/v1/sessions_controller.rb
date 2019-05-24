class Api::V1::SessionsController < ApplicationController
  def create
    user = User.where(email: params[:email]).first

    if user.valid_password?(params[:password])
      render json: user.as_json(only: [:email, :authentication_token]), status: 201
    else
      head(:unauthorized)
    end
  end
end
