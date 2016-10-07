Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
   resources :comments, only: [:create, :edit, :update, :destroy]
  end
  
  root "recipes#index"
  get 'profile/user_page'
  
  get "your_recipes" => "recipes#your_recipes"
  get "user_recipes" => "recipes#user_recipes"
  
end