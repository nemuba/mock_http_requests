# frozen_string_literal: true

# Response module
module Response
  extend ActiveSupport::Concern

  def json_response(object, status = :ok, **options)
    render json: object, status:, **options
  end
end
