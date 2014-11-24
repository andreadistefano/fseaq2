require 'test_helper'

class UnitaControllerTest < ActionController::TestCase
  setup do
    @unita = unita(:dhak)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unita" do
    assert_difference('Unita.count') do
      post :create, unita: { branca_id: @unita.branca_id, nome: @unita.nome+"aaa" }
    end

    assert_redirected_to unita_path(assigns(:unita))
  end

  test "should show unita" do
    get :show, id: @unita
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unita
    assert_response :success
  end

  test "should update unita" do
    patch :update, id: @unita, unita: { branca_id: @unita.branca_id, nome: @unita.nome }
    assert_redirected_to unita_path(assigns(:unita))
  end

  test "should destroy unita" do
    assert_difference('Unita.count', -1) do
      delete :destroy, id: @unita
    end

    assert_redirected_to unita_index_path
  end
end
