class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.random_greeting
    render json: @greeting
  end
end
