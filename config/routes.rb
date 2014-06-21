Innova::Application.routes.draw do
  resources :events

  resources :contests

  #devise_for :users
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :rols

  post '/user/save' => 'rols#save'
  get '/users/create_user' => 'rols#create_user'
  get '/users/remove/:id' => 'rols#remove'
  post '/user' => 'users#create'
  get '/users/edit_user/:id' => 'rols#edit_user'
  get '/admi/user/role_admi/:id' => 'rols#role_admi', :as => 'role_admi'
  get '/admi/user/role_jefe/:id' => 'rols#role_jefe', :as => 'role_jefe'
  get '/admi/user/role_miembro/:id' => 'rols#role_miembro', :as => 'role_miembro'
  get '/admi/user/role_organizador/:id' => 'rols#role_organizador', :as => 'role_organizador'

  get '/home' => 'rols#home'
  get '/admi' => 'rols#admi'
  get '/about_us' => 'rols#about'
  get '/contact_us' => 'rols#contact'
  root 'rols#index'

  post '/contest/save' => 'contests#save'
  get '/contests/new' => 'contests#new'
  get '/contests/destroy/:id' => 'contests#destroy'
  post '/contest' => 'contests#create'
  get '/contests/edit_contest/:id' => 'contests#edit_contest'

  get '/organizer' => 'rols#organizer'

  post '/event/save' => 'event#save'
  get '/events/new' => 'events#new'
  get '/events/destroy/:id' => 'events#destroy'
  post '/event' => 'events#create'
  get '/events/edit_event/:id' => 'events#edit_event'



  

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
