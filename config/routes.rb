Quotable::Application.routes.draw do
  root :to => "quotes#index"
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  resources :quotes do  
    resources :tags
    resources :likes
  end

end
