module Request
  extend ActiveSupport::Concern

  REQUEST_MESSAGE = "request received with success!".freeze
  

  def params_present?
    (request.post? || request.put?) && params[:request].present?
  end

  def message
    { message: "#{request.method} #{REQUEST_MESSAGE}" }
  end

  def message_with_params
    params_present? ? message.merge({ params: params[:request] }) : message
  end
end
