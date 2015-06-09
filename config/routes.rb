Rails.application.routes.draw do

  ### Comments

  get 'comments/:post_id/new' => 'comments#new', as: :new_comment

  post 'comments/:post_id' => 'comments#create', as: :create_comment

  patch 'comments' => 'comments#edit'

  delete 'comments/:id' => 'comments#delete'

  ### Posts

  get '/posts/new' => 'posts#new', as: :new_post

  get '/posts/:id/edit' => 'posts#edit', as: :edit_post

  get '/posts/:id/:title' => 'posts#show', as: :post

  get 'posts/:id' => 'posts#link_out', as: :link_out

  patch '/posts/:id/:title' => 'posts#update'

  post 'posts/:id/up-vote' => 'posts#up_vote', as: :up_vote

  post 'posts/:id/down-vote' => 'posts#down_vote', as: :down_vote

  post '/posts' => 'posts#create'

  delete '/posts/:id/:title' => 'posts#delete'

  ### Users

  get '/users/new' => 'users#new', as: :new_user

  get '/users/:id' => 'users#show', as: :user

  get '/users/:id/edit' => 'users#edit', as: :edit_user

  patch '/users/:id' => 'users#update'

  post '/users' => 'users#create'

  delete '/users/:id' => 'users#delete', as: :delete_user

  ### Sessions

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#delete'

  root 'posts#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
