CSPP52553App::Application.routes.draw do

  get "dice" => 'craps#show', as: 'dice'
  post "dice/roll" => 'craps#roll', as: 'dice_roll'

  get "rps" => "rps#new", as: 'rps'
  post "rps" => 'rps#create'

  get "poker" => 'cards#deal'

  get "scrabble(/:word)" => 'scrabble#score'

  resources :students


  root to: "pages#home"

end
