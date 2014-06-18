Instagram::Application.routes.draw do
  get "/" => "instagram#index"
  root "instagram#index"
end
