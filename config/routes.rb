Rails.application.routes.draw do
  root 'static_pages#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  
  get '/auth/github/callback', to: 'sessions#create'

  get '/schools/:id/mycourses', to: 'schools#mycourses'

  resources :users

  resources :schools do
    resources :courses
  end
  
  resources :courses do
    resources :textbooks do
      resources :course_textbooks, only: [:new, :create]
    end
  end

  resources :textbooks do
    resources :course_textbooks
  end

end
