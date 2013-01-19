CSPP52553App::Application.routes.draw do

  get "poker" => 'cards#deal'

  get "scrabble(/:word)" => 'scrabble#score'

  resources :students


  root to: "pages#home"

end
