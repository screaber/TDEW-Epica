require 'test_helper'

class DetallePichangasControllerTest < ActionController::TestCase
  setup do
    @detalle_pichanga = detalle_pichangas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_pichangas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_pichanga" do
    assert_difference('DetallePichanga.count') do
      post :create, :detalle_pichanga => @detalle_pichanga.attributes
    end

    assert_redirected_to detalle_pichanga_path(assigns(:detalle_pichanga))
  end

  test "should show detalle_pichanga" do
    get :show, :id => @detalle_pichanga
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @detalle_pichanga
    assert_response :success
  end

  test "should update detalle_pichanga" do
    put :update, :id => @detalle_pichanga, :detalle_pichanga => @detalle_pichanga.attributes
    assert_redirected_to detalle_pichanga_path(assigns(:detalle_pichanga))
  end

  test "should destroy detalle_pichanga" do
    assert_difference('DetallePichanga.count', -1) do
      delete :destroy, :id => @detalle_pichanga
    end

    assert_redirected_to detalle_pichangas_path
  end
end
