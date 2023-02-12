class HomepageController < ApplicationController
  def index
    json_response({ message: 'Welcome to the API Mock HTTP requests!' })
  end
end
