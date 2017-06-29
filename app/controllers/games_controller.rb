class GamesController < ApplicationController
  def play
  #   # @result_string = params[:number].to_i.odd? ? "Odd" : "Even"
    @car = YAML.load(session[:car])
  end

  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
  end

  def show_speed
    @car = YAML.load(session[:car])
    @car.show_speed
  end

end
