require 'test_helper'

class XinwensControllerTest < ActionController::TestCase
  setup do
    @xinwen = xinwens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xinwens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xinwen" do
    assert_difference('Xinwen.count') do
      post :create, xinwen: @xinwen.attributes
    end

    assert_redirected_to xinwen_path(assigns(:xinwen))
  end

  test "should show xinwen" do
    get :show, id: @xinwen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xinwen.to_param
    assert_response :success
  end

  test "should update xinwen" do
    put :update, id: @xinwen.to_param, xinwen: @xinwen.attributes
    assert_redirected_to xinwen_path(assigns(:xinwen))
  end

  test "should destroy xinwen" do
    assert_difference('Xinwen.count', -1) do
      delete :destroy, id: @xinwen.to_param
    end

    assert_redirected_to xinwens_path
  end
end
