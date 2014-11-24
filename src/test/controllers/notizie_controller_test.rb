require 'test_helper'

class NotizieControllerTest < ActionController::TestCase
  setup do
    @notizia = notizia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notizie)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notizia" do
    assert_difference('Notizia.count') do
      post :create, notizia: { text: @notizia.text, title: @notizia.title }
    end

    assert_redirected_to notizia_path(assigns(:notizia))
  end

  test "should show notizia" do
    get :show, id: @notizia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notizia
    assert_response :success
  end

  test "should update notizia" do
    patch :update, id: @notizia, notizia: { text: @notizia.text, title: @notizia.title }
    assert_redirected_to notizia_path(assigns(:notizia))
  end

  test "should destroy notizia" do
    assert_difference('Notizia.count', -1) do
      delete :destroy, id: @notizia
    end

    assert_redirected_to notizie_path
  end
end
