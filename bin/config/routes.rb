Rails.application.routes.draw do
  # Play the game after user has registered
  get 'games/play'

  # Show the Index page
  get 'cars/index'

  # Run the register method and show the register page.
  get 'cars/register'

  get 'cars/accelerate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
