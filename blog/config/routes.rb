Rails.application.routes.draw do
  post 'comments/:id/save', to: 'comments#save'
  get 'comments/:id/delete', to: 'comments#destroy'
  get 'comments/:id/edit', to: 'comments#edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'posts', to: 'posts#index'
  resources :posts
  root to: 'posts#index'
end
