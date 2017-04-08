require 'test_helper'

class PalindromeControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get '/'
    assert_response :success
  end

  test 'should get answer html' do
    get '/output', params: { format: 'html' }
    assert_response :success
  end

  test 'should get answer xml' do
    get '/output', params: { format: 'xml' }
    assert_response :success
  end

end
