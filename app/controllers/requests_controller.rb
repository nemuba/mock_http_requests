class RequestsController < ApplicationController
  def index
    json_response(message)
  end

  def create
    json_response(message_with_params, :created)
  end

  def update
    json_response(message_with_params)
  end

  def destroy
    json_response(message)
  end

  def status_code
    json_response(message_with_params, params[:status_code].to_i)
  end
end
