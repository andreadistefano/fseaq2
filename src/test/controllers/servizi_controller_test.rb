require 'test_helper'

class ServiziControllerTest < ActionController::TestCase
  setup do
    @servizio = servizio(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servizio)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servizio" do
    assert_difference('Servizio.count') do
      post :create, servizio: { anno: @servizio.anno, capo: @servizio.capo, socio_id: @servizio.socio_id, unita_id: @servizio.unita_id }
    end

    assert_redirected_to servizio_path(assigns(:servizio))
  end

  test "should show servizio" do
    get :show, id: @servizio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servizio
    assert_response :success
  end

  test "should update servizio" do
    patch :update, id: @servizio, servizio: { anno: @servizio.anno, capo: @servizio.capo, socio_id: @servizio.socio_id, unita_id: @servizio.unita_id }
    assert_redirected_to servizio_path(assigns(:servizio))
  end

  test "should destroy servizio" do
    assert_difference('Servizio.count', -1) do
      delete :destroy, id: @servizio
    end

    assert_redirected_to servizi_path
  end
end
