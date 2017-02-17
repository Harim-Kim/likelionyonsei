require 'test_helper'

class AssignsControllerTest < ActionController::TestCase
  setup do
    @assign = assigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assign" do
    assert_difference('Assign.count') do
      post :create, assign: { content: @assign.content, img_url: @assign.img_url, title: @assign.title }
    end

    assert_redirected_to assign_path(assigns(:assign))
  end

  test "should show assign" do
    get :show, id: @assign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assign
    assert_response :success
  end

  test "should update assign" do
    patch :update, id: @assign, assign: { content: @assign.content, img_url: @assign.img_url, title: @assign.title }
    assert_redirected_to assign_path(assigns(:assign))
  end

  test "should destroy assign" do
    assert_difference('Assign.count', -1) do
      delete :destroy, id: @assign
    end

    assert_redirected_to assigns_path
  end
end
