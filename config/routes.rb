Instagram::Application.routes.draw do

  resources :users do
  end

  get "/" => "instagram#index"
  root "instagram#index"
end
