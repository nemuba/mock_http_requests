class RestrictedListConstraint
  def initialize
    @codes = Rack::Utils::HTTP_STATUS_CODES.keys
  end

  def matches?(request)
    @codes.include?(request.params[:status_code].to_i)
  end
end

Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'

  get '/get', to: 'requests#index'
  post '/post', to: 'requests#create'
  put '/put', to: 'requests#update'
  delete '/delete', to: 'requests#destroy'

  match '/:status_code', to: 'requests#status_code', via: :all, constraints: RestrictedListConstraint.new
end
