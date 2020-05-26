Rails.application.routes.draw do
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  get 'votes/create'
  get 'stories/index'
  get 'stories/new'
  get 'welcome/index'
  resource  :session
  resources :stories do
    resources  :votes do
  end    
end
  resources :places
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
