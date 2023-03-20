class SessionsController < ApplicationController
  def click
    cookies[:click] ||= 0
    cookies[:click] = cookies[:click].to_i + 1

    session[:click] ||= 0
    session[:click] += 1

    byebug
  end
end
