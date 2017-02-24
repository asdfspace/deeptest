Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/test-websites/new', to: 'test_websites#new'
  post '/test-websites/', to: 'test_websites#create'
end
