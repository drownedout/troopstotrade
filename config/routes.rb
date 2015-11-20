Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :orgs
  devise_for :users
  get 'about', :to => 'main#about', :as => :main_about
  get 'pricing', :to => 'main#pricing', :as => :main_pricing
  get 'database', :to => 'main#database', :as => :main_database
  get 'profile', :to => 'main#profile', :as => :main_profile
  get 'volunteer', :to => 'main#volunteer', :as => :main_volunteer
  get 'contact', :to => 'main#contact', :as => :main_contact
  get 'signup', :to => 'main#signup', :as => :main_login

  resources :jobs
  get 'jobs/new'
  get 'jobs/show'
  get 'jobs/index'
  get 'jobs/edit'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :users

  root 'main#index'

  # Example of regular route:


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
