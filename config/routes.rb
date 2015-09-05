# == Route Map
#
#        Prefix Verb   URI Pattern                   Controller#Action
#     employees GET    /employees(.:format)          employees#index
#               POST   /employees(.:format)          employees#create
#  new_employee GET    /employees/new(.:format)      employees#new
# edit_employee GET    /employees/:id/edit(.:format) employees#edit
#      employee GET    /employees/:id(.:format)      employees#show
#               PATCH  /employees/:id(.:format)      employees#update
#               PUT    /employees/:id(.:format)      employees#update
#               DELETE /employees/:id(.:format)      employees#destroy
#        events GET    /events(.:format)             events#index
#               POST   /events(.:format)             events#create
#     new_event GET    /events/new(.:format)         events#new
#    edit_event GET    /events/:id/edit(.:format)    events#edit
#         event GET    /events/:id(.:format)         events#show
#               PATCH  /events/:id(.:format)         events#update
#               PUT    /events/:id(.:format)         events#update
#               DELETE /events/:id(.:format)         events#destroy
#

Rails.application.routes.draw do
  resources :employees
  resources :events
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
