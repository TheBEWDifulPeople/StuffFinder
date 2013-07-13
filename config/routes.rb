StuffFinder::Application.routes.draw do
  get "categories/show"
  root "welcome#index"
  resources :classifieds
  resources :categories, only: :show
end
