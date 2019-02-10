require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get signup_path
    assert_response :success
  end

  test 'should create' do
    # define user_params
    # call create
    # assert redirect called
    # sad path render new?
  end
end
