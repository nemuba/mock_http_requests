# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Request
  include Response
  include HandleException
end
