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

  get 'project_profiles/step_1'
  get 'project_profiles/step_2'
  get 'project_profiles/step_3'
  get 'project_profiles/step_4'
  get 'project_profiles/step_5'
  get 'project_profiles/step_6'
  get 'project_profiles/step_7'

  devise_for :members
  root to: 'pages#home'
end
