require 'test_helper'

class PichangasControllerTest < ActionController::TestCase
  setup do
    @pichanga = pichangas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pichangas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pichanga" do
    assert_difference('Pichanga.count') do
      post :create, :pichanga => @pichanga.attributes
    end

    assert_redirected_to pichanga_path(assigns(:pichanga))
  end

  test "should show pichanga" do
    get :show, :id => @pichanga
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pichanga
    assert_response :success
  end

  test "should update pichanga" do
    put :update, :id => @pichanga, :pichanga => @pichanga.attributes
    assert_redirected_to pichanga_path(assigns(:pichanga))
  end

  test "should destroy pichanga" do
    assert_difference('Pichanga.count', -1) do
      delete :destroy, :id => @pichanga
    end

    assert_redirected_to pichangas_path
  end
end
