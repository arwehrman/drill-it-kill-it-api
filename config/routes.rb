Rails.application.routes.draw do
  get 'user/new'

  namespace :api do
  resources :drills, except: [:new, :edit]
  end
end
