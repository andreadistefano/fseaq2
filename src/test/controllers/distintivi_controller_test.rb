require 'test_helper'

class DistintiviControllerTest < ActionController::TestCase
  setup do
    @distintivo = distintivo(:promessa_lupetti)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distintivi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distintivo" do
    assert_difference('Distintivo.count') do
      post :create, distintivo: { nome: @distintivo.nome }
    end

    assert_redirected_to distintivo_path(assigns(:distintivo))
  end

  test "should show distintivo" do
    get :show, id: @distintivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distintivo
    assert_response :success
  end

  test "should update distintivo" do
    patch :update, id: @distintivo, distintivo: { nome: @distintivo.nome }
    assert_redirected_to distintivo_path(assigns(:distintivo))
  end

  test "should destroy distintivo" do
    assert_difference('Distintivo.count', -1) do
      delete :destroy, id: @distintivo
    end

    assert_redirected_to distintivi_path
  end
end
