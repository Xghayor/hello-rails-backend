class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.random_greeting
    render json: @greeting

    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'GET'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
  end
end
