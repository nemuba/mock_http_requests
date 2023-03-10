# frozen_string_literal: true

Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'

  get '/get', to: 'requests#index'
  post '/post', to: 'requests#create'
  put '/put', to: 'requests#update'
  delete '/delete', to: 'requests#destroy'

  match '/:status_code', to: 'requests#status_code', via: :all, constraints: RestrictedConstraints.new
end
