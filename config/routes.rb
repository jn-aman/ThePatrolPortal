Rails.application.routes.draw do
  get 'stats/index' , :as => :stat_index
  get 'stats/graphsgen',:as => :gen_stats
get 'volunteers/typed',:as => :typed_vol
  get 'chats/create' 
  get 'volunteers/hel' 

  get 'chats/new'

  get 'chats/show'

  get 'chats/index', :as => :chat
  get 'crimes/search_crime', :as => :search_crime

resources :chats


  get 'checkins/create'
   get 'trips/index' ,  :as => :trip
   get 'trips/create'
   get 'trips/show'


resources :trips do
        resources :checkins, only: :create
      end


      # root 'trips#index'



  # get 'crim/:locality' => 'crimes#loc', :as => :showl
  resources :crimes
  
devise_for :volunteers, :controllers => {:sessions => "sessions" }

   get 'crimes/locality/:locality', controller: 'crimes', action: 'loc',  :as => :showl

   get 'stats/graphs/:locality', controller: 'stats', action: 'graphs',  :as => :showstats

   get 'volunteers/test', controller: 'volunteers', action: 'test',  :as => :test
   get 'volunteers/py_test', controller: 'volunteers', action: 'py_test',  :as => :py_test


   get 'volunteers/index1', controller: 'volunteers', action: 'index1',  :as => :index1

   get 'volunteers/loc', controller: 'volunteers', action: 'loc',  :as => :loc



get 'volunteers/sp/:police_station', controller: 'volunteers', action: 'sp', :as => :showv
  get 'volunteers/index1' => 'volunteers#index1'
  get 'volunteers/py', controller: 'volunteers', action: 'py', :as => :py
  get 'volunteers/online', controller: 'volunteers', action: 'online', :as => :online
    get 'volunteers/online1', controller: 'volunteers', action: 'online1', :as => :online1
    get 'volunteers/slider', controller: 'volunteers', action: 'slider', :as => :slider

    # get 'volunte/py' => 'volunteers#py', :as => :py
get 'volunteers/nam/:name', controller: 'volunteers', action: 'nam',  :as => :shown

   get 'volunteers/cat/:category', controller: 'volunteers', action: 'cat',  :as => :showc
   resources :volunteers 


   root 'volunteers#index'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
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
