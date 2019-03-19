Rails.application.routes.draw do

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  
  

  resources :users

  resources :schools do
    resources :courses
  end
  
  resources :courses do
    resources :textbooks
  end

  resources :textbooks  
end
