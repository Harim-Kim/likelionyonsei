require 'test_helper'

class FacebooklinksControllerTest < ActionController::TestCase
  setup do
    @facebooklink = facebooklinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facebooklinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facebooklink" do
    assert_difference('Facebooklink.count') do
      post :create, facebooklink: { name: @facebooklink.name, url: @facebooklink.url }
    end

    assert_redirected_to facebooklink_path(assigns(:facebooklink))
  end

  test "should show facebooklink" do
    get :show, id: @facebooklink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facebooklink
    assert_response :success
  end

  test "should update facebooklink" do
    patch :update, id: @facebooklink, facebooklink: { name: @facebooklink.name, url: @facebooklink.url }
    assert_redirected_to facebooklink_path(assigns(:facebooklink))
  end

  test "should destroy facebooklink" do
    assert_difference('Facebooklink.count', -1) do
      delete :destroy, id: @facebooklink
    end

    assert_redirected_to facebooklinks_path
  end
end
