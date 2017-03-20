Rails.application.routes.draw do
  get 'teaser/index'

  root 'home#index'
  # get 'users/sign_up' => 'access#denied'
  
  get 'home' => 'home#index'
  
  devise_for :users, controllers: { 
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations"
  }
  
  
  post 'assignment/create_assignment' => 'plainpage#create_assignment'
  get 'assignment/update/:num' => 'plainpage#update_assignment'
  get 'assignment/:id' => 'plainpage#assignment'
  get 'assignment/:id/submit' => 'plainpage#submit_assignment'
  get 'assignment/:assign_id/:user_id' => 'plainpage#show_assignment'
  post 'assignment/updating_assignment/:num' => 'plainpage#updating_assignment'
  
  post 'create_comment' => 'plainpage#create_comment'
  # get 'plainpage/formm'

  get 'notice_list' => 'plainpage#notice_list'
  get 'notice/:id' => 'plainpage#notice'
  
  
  get 'post_list' => 'plainpage#post_list'
  get 'post/new' => 'plainpage#new_post'
  get 'post/:id' => 'plainpage#posts'
  post 'create_post' => 'plainpage#create_post'
  post 'create_reply' => 'plainpage#create_reply'
  get 'post/:id/update' => 'plainpage#update_post'
  get 'post/:id/delete' => 'plainpage#delete_post'
  post 'post/:id/updating' => 'plainpage#updating_post'

  # resources :plainpages

  resources :accounts
  
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # resources :sites
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   get 'plainpage/index'
   get 'plainpage/accounting'
   get 'plainpage/index'
   get 'plainpage/page_403'
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
