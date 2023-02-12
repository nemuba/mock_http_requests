class RequestsController < ApplicationController
  def index
    json_response(message(200))
  end

  def create
    json_response(message_with_params(201), :created)
  end

  def update
    json_response(message_with_params(200))
  end

  def destroy
    json_response(message(200))
  end

  def status_code
    json_response(message_with_params(params[:status_code]), params[:status_code].to_i)
  end
end
