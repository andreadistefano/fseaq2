require 'test_helper'

class CensimentiControllerTest < ActionController::TestCase
  setup do
    @censimento = censimento(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:censimenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create censimento" do
    assert_difference('Censimento.count') do
      post :create, censimento: { anno: 2014, capo_gruppo: @censimento.capo_gruppo, socio_id: @censimento.socio_id, unita_id: @censimento.unita_id, vice_capo_gruppo: @censimento.vice_capo_gruppo }
    end
    assert_redirected_to censimento_path(assigns(:censimento))
  end

  test "should show censimento" do
    get :show, id: @censimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @censimento
    assert_response :success
  end

  test "should update censimento" do
    patch :update, id: @censimento, censimento: { anno: @censimento.anno, capo_gruppo: @censimento.capo_gruppo, socio_id: @censimento.socio_id, unita_id: @censimento.unita_id, vice_capo_gruppo: @censimento.vice_capo_gruppo }
    assert_redirected_to censimento_path(assigns(:censimento))
  end

  test "should destroy censimento" do
    assert_difference('Censimento.count', -1) do
      delete :destroy, id: @censimento
    end

    assert_redirected_to censimenti_path
  end
end
