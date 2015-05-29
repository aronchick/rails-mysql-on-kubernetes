require 'test_helper'

class TodoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should post create" do
    get :create
    assert_response :success
  end

  test "should post delete" do
    get :delete
    assert_response :success
  end

end
