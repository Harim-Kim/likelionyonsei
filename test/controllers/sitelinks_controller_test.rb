require 'test_helper'

class SitelinksControllerTest < ActionController::TestCase
  setup do
    @sitelink = sitelinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sitelinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sitelink" do
    assert_difference('Sitelink.count') do
      post :create, sitelink: { name: @sitelink.name, url: @sitelink.url }
    end

    assert_redirected_to sitelink_path(assigns(:sitelink))
  end

  test "should show sitelink" do
    get :show, id: @sitelink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sitelink
    assert_response :success
  end

  test "should update sitelink" do
    patch :update, id: @sitelink, sitelink: { name: @sitelink.name, url: @sitelink.url }
    assert_redirected_to sitelink_path(assigns(:sitelink))
  end

  test "should destroy sitelink" do
    assert_difference('Sitelink.count', -1) do
      delete :destroy, id: @sitelink
    end

    assert_redirected_to sitelinks_path
  end
end
