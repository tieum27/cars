class CarsController < ApplicationController
  def index
  end

  def register
    if !params.has_key?(:model) || params[:model].strip.empty? ||
       !params.has_key?(:year) || params[:year].strip.empty?
      model = "Name missing"
      render "register.html.erb"
    else
      # create a user object with information submitted
      car = Car.new(params[:model], params[:year])
      # save user object in session, so it can be accessed in the game
      session[:car] = car.to_yaml
      # rediect to the game play page
      redirect_to "/games/play"
    end #end if
  end #end register

  def accelerate
    @speed = @speed + 10
  end

  def sp
    @speed
  end


end # End of Class
