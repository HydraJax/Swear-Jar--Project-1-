SwearJar::Application.routes.draw do
  
get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
root :to => "users#new"
get "/search" => "users#search", :as => "search"
get "nonprofit" => "users#nonprofit", :as => "users_nonprofit"
get "results/:result" => "nonprofits#show", :as => "results"
post "/nonprofit" => "nonprofits#create", :as => "non_profit_create"
resources :users
resources :sessions
resources :nonprofits

end
