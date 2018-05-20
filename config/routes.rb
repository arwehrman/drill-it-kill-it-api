Rails.application.routes.draw do
  namespace :api do
  resources :drills, except: [:new, :edit]
  end
end
