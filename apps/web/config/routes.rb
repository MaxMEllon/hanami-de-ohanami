# frozen_string_literal: true
get '/users', to: 'users#signout'

post '/users/sign_in', to: 'users#sign_in'
post '/users/sign_up', to: 'users#create'
delete '/users/sign_out', to: 'users#sign_out'
