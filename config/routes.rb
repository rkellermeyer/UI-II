Rails.application.routes.draw do
  get 'pages/home'

  devise_for :members
  root to: 'pages#home'
end
