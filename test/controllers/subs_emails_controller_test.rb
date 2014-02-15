require 'test_helper'

class SubsEmailsControllerTest < ActionController::TestCase
  setup do
    @subs_email = subs_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subs_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subs_email" do
    assert_difference('SubsEmail.count') do
      post :create, subs_email: { email: @subs_email.email }
    end

    assert_redirected_to subs_email_path(assigns(:subs_email))
  end

  test "should show subs_email" do
    get :show, id: @subs_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subs_email
    assert_response :success
  end

  test "should update subs_email" do
    patch :update, id: @subs_email, subs_email: { email: @subs_email.email }
    assert_redirected_to subs_email_path(assigns(:subs_email))
  end

  test "should destroy subs_email" do
    assert_difference('SubsEmail.count', -1) do
      delete :destroy, id: @subs_email
    end

    assert_redirected_to subs_emails_path
  end
end
