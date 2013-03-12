require 'test_helper'

class UserMixtapesControllerTest < ActionController::TestCase
  setup do
    @user_mixtape = user_mixtapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_mixtapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_mixtape" do
    assert_difference('UserMixtape.count') do
      post :create, user_mixtape: { mixtape_id: @user_mixtape.mixtape_id, user_id: @user_mixtape.user_id }
    end

    assert_redirected_to user_mixtape_path(assigns(:user_mixtape))
  end

  test "should show user_mixtape" do
    get :show, id: @user_mixtape
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_mixtape
    assert_response :success
  end

  test "should update user_mixtape" do
    put :update, id: @user_mixtape, user_mixtape: { mixtape_id: @user_mixtape.mixtape_id, user_id: @user_mixtape.user_id }
    assert_redirected_to user_mixtape_path(assigns(:user_mixtape))
  end

  test "should destroy user_mixtape" do
    assert_difference('UserMixtape.count', -1) do
      delete :destroy, id: @user_mixtape
    end

    assert_redirected_to user_mixtapes_path
  end
end
