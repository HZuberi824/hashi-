Rails.application.routes.draw do

  devise_for :users
  resources :students
  resources :teachers
  resources :subjects
  resources :lectures
  resources :photos do
    resources :comments
  end
  root 'photos#index'



end
