Rails.application.routes.draw do
  resources :contact_requests
  resources :projects
  get 'pages/home'

  devise_for :members
  root to: 'pages#home'
end
