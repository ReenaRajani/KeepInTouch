# == Route Map
#
#              Prefix Verb   URI Pattern                                       Controller#Action
#      pages_settings GET    /pages/settings(.:format)                         pages#settings
#                root GET    /                                                 pages#home
#     employee_events GET    /employees/:employee_id/events(.:format)          events#index
#                     POST   /employees/:employee_id/events(.:format)          events#create
#  new_employee_event GET    /employees/:employee_id/events/new(.:format)      events#new
# edit_employee_event GET    /employees/:employee_id/events/:id/edit(.:format) events#edit
#      employee_event GET    /employees/:employee_id/events/:id(.:format)      events#show
#                     PATCH  /employees/:employee_id/events/:id(.:format)      events#update
#                     PUT    /employees/:employee_id/events/:id(.:format)      events#update
#                     DELETE /employees/:employee_id/events/:id(.:format)      events#destroy
#           employees GET    /employees(.:format)                              employees#index
#                     POST   /employees(.:format)                              employees#create
#        new_employee GET    /employees/new(.:format)                          employees#new
#       edit_employee GET    /employees/:id/edit(.:format)                     employees#edit
#            employee GET    /employees/:id(.:format)                          employees#show
#                     PATCH  /employees/:id(.:format)                          employees#update
#                     PUT    /employees/:id(.:format)                          employees#update
#                     DELETE /employees/:id(.:format)                          employees#destroy
#

Rails.application.routes.draw do

  get 'pages/settings'

  root :to => 'pages#home'
  resources :employees do 
    resources :events
  end
end
