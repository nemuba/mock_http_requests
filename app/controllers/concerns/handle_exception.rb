# frozen_string_literal: true

# HandleException
module HandleException
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError, with: :render_error
  end

  def render_error
    json_response({ message: "Internal Server Error" }, :internal_server_error)
  end
end
