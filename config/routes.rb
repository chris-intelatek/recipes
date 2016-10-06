Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
   resources :comments, only: [:create, :edit, :update, :destroy]
  end
  
  root "recipes#index"
  
  get "your_posts" => "blogposts#your_posts"
  get "user_posts" => "blogposts#user_posts"
  
end