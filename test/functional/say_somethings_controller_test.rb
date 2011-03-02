require 'test_helper'

class SaySomethingsControllerTest < ActionController::TestCase
  setup do
    @say_something = say_somethings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:say_somethings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create say_something" do
    assert_difference('SaySomething.count') do
      post :create, :say_something => @say_something.attributes
    end

    assert_redirected_to say_something_path(assigns(:say_something))
  end

  test "should show say_something" do
    get :show, :id => @say_something.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @say_something.to_param
    assert_response :success
  end

  test "should update say_something" do
    put :update, :id => @say_something.to_param, :say_something => @say_something.attributes
    assert_redirected_to say_something_path(assigns(:say_something))
  end

  test "should destroy say_something" do
    assert_difference('SaySomething.count', -1) do
      delete :destroy, :id => @say_something.to_param
    end

    assert_redirected_to say_somethings_path
  end
end
