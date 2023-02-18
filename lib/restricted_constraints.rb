# frozen_string_literal: true

# RestrictedConstraints is a custom constraint that can be used to restrict
class RestrictedConstraints
  def initialize
    @codes = Rack::Utils::HTTP_STATUS_CODES.keys
  end

  def matches?(request)
    @codes.include?(request.params[:status_code].to_i)
  end
end
