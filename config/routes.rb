CSPP52553App::Application.routes.draw do

  get "scrabble(/:word)" => 'scrabble#score'

  resources :students


  root to: "pages#home"

end
