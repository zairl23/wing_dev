require 'test_helper'

class TupiansControllerTest < ActionController::TestCase
  setup do
    @tupian = tupians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tupians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tupian" do
    assert_difference('Tupian.count') do
      post :create, tupian: @tupian.attributes
    end

    assert_redirected_to tupian_path(assigns(:tupian))
  end

  test "should show tupian" do
    get :show, id: @tupian.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tupian.to_param
    assert_response :success
  end

  test "should update tupian" do
    put :update, id: @tupian.to_param, tupian: @tupian.attributes
    assert_redirected_to tupian_path(assigns(:tupian))
  end

  test "should destroy tupian" do
    assert_difference('Tupian.count', -1) do
      delete :destroy, id: @tupian.to_param
    end

    assert_redirected_to tupians_path
  end
end
