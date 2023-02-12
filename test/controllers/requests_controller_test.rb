require "test_helper"

class RequestsControllerTest < ActionDispatch::IntegrationTest
  REQUEST_MESSAGE = "request received with success and status code".freeze

  def message_response_equal?(method, code)
    json_parse['message'] == "#{method} #{REQUEST_MESSAGE} #{code}"
  end

  def params_response_equal?(key, value)
    json_parse['params'][key] == value
  end

  def json_parse
    JSON.parse(response.body)
  end

  test '/get' do
    get '/get'
    assert_response :success
    assert message_response_equal?('GET', 200)
  end

  test '/post' do
    post '/post', params: { request: { foo: 'bar' } }
    assert_response :created
    assert_kind_of Hash, json_parse
    assert message_response_equal?('POST', 201)
    assert params_response_equal?('foo', 'bar')
  end

  test '/put' do
    put '/put', params: { request: { foo: 'bar' } }
    assert_response :success
    assert_kind_of Hash, json_parse
    assert message_response_equal?('PUT', 200)
    assert params_response_equal?('foo', 'bar')
  end

  test '/delete' do
    delete '/delete'
    assert_response :success
    assert message_response_equal?('DELETE', 200)
  end

  test '/:status_code' do
    Rack::Utils::HTTP_STATUS_CODES.keys do |status_code|
      get "/#{status_code}"
      assert_response status_code
      assert message_response_equal?('GET', status_code)
    end
  end
end
