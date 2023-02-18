# frozen_string_literal: true

# Request module
module Request
  extend ActiveSupport::Concern

  REQUEST_MESSAGE = 'request received with success and status code'

  def params_present?
    (request.post? || request.put?) && params[:request].present?
  end

  def message(code = 200)
    { message: "#{request.method} #{REQUEST_MESSAGE} #{code}" }
  end

  def message_with_params(code)
    params_present? ? message(code).merge({ params: params[:request] }) : message(code)
  end
end
