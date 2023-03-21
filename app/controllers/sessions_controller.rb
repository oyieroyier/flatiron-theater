class SessionsController < ApplicationController
  def click
    cookies[:click] ||= 0
    cookies[:click] = cookies[:click].to_i + 1

    session[:click] ||= 0
    session[:click] += 1

    # byebug
  end

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end
end
