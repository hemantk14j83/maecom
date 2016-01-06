Rails.application.routes.draw do
  
  devise_for :users, controllers:{sessions: "users/sessions",registrations: "users/registrations"}
  #devise_for :users, controllers: {}

  devise_scope :user do
    get "login", to: "users/sessions#new"
    get "/users/sign_out" => 'users/sessions#destroy'
  end
  
  resources :orders

  resources :users do
    resources :addresses
  end
  
  resources :adpanel
  resources :products
  resources :selected_items

  resources :users
  get 'myaccount' => 'users#show'

  resources :items
  get "rejected-merchants"=>"merchants#rejected"
  #get 'merchants/:id/edit', to: 'merchants#edit', as: 'merchant-rejection-reason'
  resources :merchants do
    get 'approve', on: :member
    get 'reject', on: :member
    post 'reject'
  end

  resources :carts
  resources :contacts do
    get 'replied', on: :member
  end

  get 'store/index'
  get 'contactus' => 'contacts#new'
  get 'merchant-signup' => 'merchants#new'
  get ":page" => "pages#show"
  root 'store#index'
end
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

