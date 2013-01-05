CSPP52553App::Application.routes.draw do
  resources :students


  root to: "pages#home"

end
