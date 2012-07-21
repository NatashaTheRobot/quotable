Quotable::Application.routes.draw do
  resources :tags

  resources :quotes

  root :to => "sessions#index"
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
