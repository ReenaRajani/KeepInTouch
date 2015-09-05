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
  
end
