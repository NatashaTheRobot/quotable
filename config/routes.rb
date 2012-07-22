Quotable::Application.routes.draw do
  root :to => "quotes#index"
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  match "/signup" => "sessions#signup", :as => :signup

  resources :quotes do  
    resources :tags
    resources :likes
  end

end
