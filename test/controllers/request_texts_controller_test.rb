require 'test_helper'

class RequestTextsControllerTest < ActionController::TestCase
  setup do
    @request_text = request_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_text" do
    assert_difference('RequestText.count') do
      post :create, request_text: { body: @request_text.body, email: @request_text.email, ip: @request_text.ip, name: @request_text.name, website: @request_text.website }
    end

    assert_redirected_to request_text_path(assigns(:request_text))
  end

  test "should show request_text" do
    get :show, id: @request_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_text
    assert_response :success
  end

  test "should update request_text" do
    patch :update, id: @request_text, request_text: { body: @request_text.body, email: @request_text.email, ip: @request_text.ip, name: @request_text.name, website: @request_text.website }
    assert_redirected_to request_text_path(assigns(:request_text))
  end

  test "should destroy request_text" do
    assert_difference('RequestText.count', -1) do
      delete :destroy, id: @request_text
    end

    assert_redirected_to request_texts_path
  end
end
