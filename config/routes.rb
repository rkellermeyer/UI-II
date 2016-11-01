Rails.application.routes.draw do
  resources :patent_searches
  resources :mentors
  resources :project_profiles
  resources :categories
  resources :contact_requests
  resources :projects
  get 'pages/home'
  get 'pages/membership_information'
  get 'pages/about_us'

  devise_for :members
  root to: 'pages#home'
end
