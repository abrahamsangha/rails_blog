RailsBlog::Application.routes.draw do
  root :to => 'posts#index'

  resources :posts
  resources :tags
  resources :posts_tags

end
