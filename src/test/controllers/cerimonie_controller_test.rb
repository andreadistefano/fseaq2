require 'test_helper'

class CerimonieControllerTest < ActionController::TestCase
  setup do
    @cerimonia = cerimonia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cerimonie)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cerimonia" do
    assert_difference('Cerimonia.count') do
      post :create, cerimonia: { data: @cerimonia.data, distintivo_id: @cerimonia.distintivo_id, socio_id: @cerimonia.socio_id }
    end

    assert_redirected_to cerimonia_path(assigns(:cerimonia))
  end

  test "should show cerimonia" do
    get :show, id: @cerimonia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cerimonia
    assert_response :success
  end

  test "should update cerimonia" do
    patch :update, id: @cerimonia, cerimonia: { data: @cerimonia.data, distintivo_id: @cerimonia.distintivo_id, socio_id: @cerimonia.socio_id }
    assert_redirected_to cerimonia_path(assigns(:cerimonia))
  end

  test "should destroy cerimonia" do
    assert_difference('Cerimonia.count', -1) do
      delete :destroy, id: @cerimonia
    end

    assert_redirected_to cerimonie_path
  end
end
