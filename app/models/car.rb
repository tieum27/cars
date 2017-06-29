class Car 
  def initialize(model, year)
    @model = model
    @year = year
    @speed = 0
  end

  # To be called in the view
  def info
    @model + " " + @year
  end

  # Necessary for YAML
  def model= new_model
    @model = new_model
  end

  def year= new_year
    @year = new_year
  end


end
