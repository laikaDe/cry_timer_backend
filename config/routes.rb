Rails.application.routes.draw do
  resources :moods
  resources :reviews
  resources :timers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
