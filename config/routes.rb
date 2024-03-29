WingDev::Application.routes.draw do
  
  resources :xinwens

  resources :commits

  resources :tupians

  resources :pictures

  get "zhuye/index"

  get "shiges/index"

  get "shiges/show"

  get "poemtries/index"

  get "poemtries/show"

  #resources :musics

  #get "autors/index"

  #get "autors/show"

  #get "books/index"

  root :to => 'zhuye#index'

  resources :samples,:autors,:albums,:poemtries,:shiges,:books, :commits

  get "ufo/index"
  #match 'login' => 'users#sign_in', :as => :login
  #match 'logout' => 'user_sessions#destroy', :as => :logout
  #put '/commitables/:commitable_id/save_commit' => 'commitable#save_commit', :as => :new_commit
  #get '/commitables/:commitable_id/new_commit' => 'commitable#new_commit', :as => :new_commit
  #get  '/albums/:album_id/new_commit' => 'albums#new_commit', :as => :new_commit
  #post '/albums/:album_id/save_commit' => 'albums#save_commit', :as => :new_commit
  #put '/albums/:album_id/save_commit' => 'albums#save_commit', :as => :new_commit
  get  '/books/:book_id/new_commit' => 'books#new_commit', :as => :new_commit_book
  post '/books/:book_id/save_commit' => 'books#save_commit', :as => :new_commit_book
  put '/books/:book_id/save_commit' => 'books#save_commit', :as => :new_commit_book
  get 'xinwens/:xinwen_id/new_commit' => 'xinwens#new_commit', :as => :new_commit_xinwen
  post '/xinwens/:xinwen_id/save_commit' => 'xinwens#save_commit', :as => :new_commit_xinwen
  put '/xinwens/:xinwen_id/save_commit' => 'xinwens#save_commit', :as => :new_commit_xinwen
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users 
  #:controllers => { :registrations => "users/registrations" ,:sessions => "users/sessions"}
  #resources :users
  
#Redirect to a specific page on successful sign in 
 
  
  # match '/user' => "welcome#index", :as => :user_root
  #
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  #resources :books do
  #@  resources :commits, :controller => 'book_commits'
  #end
end
