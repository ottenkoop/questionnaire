Questionnaire::Application.routes.draw do

  get "password_resets/new"

  resources :surveys
  resources :results
  resources :pages
  resources :questions
  resources :users
  resources :sessions
  resources :password_resets

  root to: 'pages#page0'

  match '/1' => 'pages#01. introduction/page1'
  match '/2' => 'pages#01. introduction/page2'
  match '/3' => 'pages#01. introduction/page3'
  match '/4' => 'pages#02. doc_story/page4_doc'
  match '/5' => 'pages#page5_doc'
  match '/6' => 'pages#page6_doc'
  match '/7' => 'pages#03. teach_story/page7_teacher'
  match '/8' => 'pages#page8_teacher'
  match '/9' => 'pages#page9_teacher'
  match '/10' => 'pages#04. jungle_story/page10_jungle'
  match '/11' => 'pages#04. jungle_story/page11_jungle'
  match '/12' => 'pages#04. jungle_story/page12_jungle'
  match '/13' => 'pages#04. jungle_story/page13_jungle'
  match '/14' => 'pages#04. jungle_story/page14_jungle'

  get '/log_in' => "sessions#new", as: 'log_in'
  get '/log_out' => "sessions#destroy", as: 'log_out'

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
  # match ':controller(/:action(/:id))(.:format)'
end
