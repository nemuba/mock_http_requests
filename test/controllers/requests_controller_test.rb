require "test_helper"

class RequestsControllerTest < ActionDispatch::IntegrationTest
  def json_parse
    JSON.parse(response.body)
  end

  test '/get' do
    get '/get'
    assert_response :success
  end

  test '/post' do
    post '/post', params: { request: { foo: 'bar' } }
    assert_response :created
    assert_kind_of Hash, json_parse
    assert_equal 'bar', json_parse['params']['foo']
  end

  test '/put' do
    put '/put', params: { request: { foo: 'bar' } }
    assert_response :success
    assert_kind_of Hash, json_parse
    assert_equal 'bar', json_parse['params']['foo']
  end

  test '/delete' do
    delete '/delete'
    assert_response :success
  end

  test '/:status_code' do
    Rack::Utils::HTTP_STATUS_CODES.keys do |status_code|
      get "/#{status_code}"
      assert_response status_code
    end
  end
end
