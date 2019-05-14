Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  get '/dashboard', to: 'dashboards#index'
  #get '/login', to: 'sessions#create'
  #get '/usercreation', to: 'users#create'
  #get '/registration', to: 'shifts#registration'
  get '/index', to: 'shifts#index'
  
  resources :users
  
  
  
  #get 'auth/developer', :as => 'developer_auth'
  #get 'auth/github', :as => 'github_auth'
  #get 'auth/facebook', :as => 'facebook_auth'
  
  get '/login', :to => 'sessions#new', :as => 'login'
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  match 'auth/failure', :to => 'sessions#failure', :via => [:get, :post]
  get 'sessions/destroy', :as => 'logout'
  get '/cleanup/', :to => 'sessions#cleanup', :as => :cleanup
  get '/examine', :to => 'sessions#examine', :as => :examine
  
  get '/userprofile', :to => 'sessions#userprofile', :as => :userprofile

  get 'selectshifts', :to => 'sessions#selectshifts', :as => :selectshifts
  
  get 'faqAndquicklinks', :to => 'sessions#faqAndquicklinks', :as => :faqAndquicklinks
  
  root 'shifts#index'
  
  

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
