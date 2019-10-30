
Rails.application.routes.draw do
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/edit'
  # get 'categories/new'
  # get 'posts/index'
  get '/', to: "home#index"
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
