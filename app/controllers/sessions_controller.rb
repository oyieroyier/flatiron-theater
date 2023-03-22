class SessionsController < ApplicationController
  def click
    cookies[:click] ||= 0
    cookies[:click] = cookies[:click].to_i + 1

    session[:click] ||= 0
    session[:click] += 1

    # byebug
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user, status: :ok
    else
      render json: { error: 'Not authorized' }, status: :unauthorized
    end
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
