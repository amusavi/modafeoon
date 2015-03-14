

Rails.application.routes.draw do
  get 'shahids/new'

  get 'users/new'

  get 'shohada/shahid1' 

  get 'shohada/shahid2'

  get 'shohada/shahid3'

  get 'shohada/shahid4'

  get 'shohada/shahid5'

  get 'shohada/shahid6'

  get 'shohada/shahid7'

  get 'shohada/shahid8'

  get 'shohada/shahid9'

  get 'shohada/shahid10'

  get 'shohada/welcome' 
  get 'shohada/download' => "shohada#download"

  get 'users/new'
  get 'users/login'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'shohada#welcome'

  #root :to => "users#show", :via => :get


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
  resources :users

end
