Rails.application.routes.draw do
  resources :patent_searches
  resources :mentors
  resources :project_profiles
  resources :categories
  resources :contact_requests
  resources :projects do
    get '/new/step/(:step)', to: 'projects#new_step', as: :new_step
    resource :application, only: :show, controller: 'project_application'
  end
  get 'pages/home'
  get 'pages/membership_information'
  get 'pages/about_us'

  devise_for :members
  root to: 'pages#home'
end
