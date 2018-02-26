Rails.application.routes.draw do
  default_url_options :host => APP_CONFIG['host_url']

  root 'welcome#index'

  get 'home_gauge/index'
  get 'home_gauge/:id' => 'home_gauge#show'
  get 'home_gauge/:part/:id' => 'home_gauge#show'

  post 'newsletter' => 'welcome#newsletter'
  post 'request_inspection' => 'welcome#request_inspection'
  get 'company' => 'company#index'
  get 'franchise' => 'franchise#index'
  post 'franchise_contact' => 'franchise#contact', as: :franchise_contact
  get 'geo_owners_search' => 'welcome#get_zees'
  get 'geo_owners_switch' => 'welcome#switch_zees'
  post 'geo_owner_chosen' => 'welcome#multi_zee_selected'
  get 'request_inspection_links' => 'welcome#request_inspection_links'
  resources :resources, :only => [:index,:show]
  resources :agents, :only => [:index,:show]
  resources :buyers, :only => [:index,:show]
  resources :sellers, :only => [:index,:show]

  get 'bbp' => 'bbp#index'
  get 'bbp/success' => 'bbp#success'
  get 'bbp/error' => 'bbp#error'
  get 'bbp/submit' => 'bbp#submit'

  #   get 'products/:id' => 'catalog#view'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
