require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test '#index returns success' do
    get people_url
    assert_response :success
  end

  test '#index returns people' do
    get people_url

    json_response = JSON.parse(response.body)
    assert_equal 2, json_response.size
  end
end
