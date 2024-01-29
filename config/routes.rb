Rails.application.routes.draw do


  # get 'users/show'
  # get 'users/edit'
  # get 'users/view'
  # get 'postimages/index'
  # get 'postimages/show'
  # get 'postimages/new'
  root :to =>"homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  # resources :meshiterro
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]

  end
    resources :users, only: [:show, :edit, :update]
end