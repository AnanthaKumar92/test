require 'test_helper'

class OnlyLayoutsControllerTest < ActionController::TestCase
  setup do
    @only_layout = only_layouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:only_layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create only_layout" do
    assert_difference('OnlyLayout.count') do
      post :create, only_layout: { age: @only_layout.age, description: @only_layout.description, name: @only_layout.name, qualification: @only_layout.qualification }
    end

    assert_redirected_to only_layout_path(assigns(:only_layout))
  end

  test "should show only_layout" do
    get :show, id: @only_layout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @only_layout
    assert_response :success
  end

  test "should update only_layout" do
    patch :update, id: @only_layout, only_layout: { age: @only_layout.age, description: @only_layout.description, name: @only_layout.name, qualification: @only_layout.qualification }
    assert_redirected_to only_layout_path(assigns(:only_layout))
  end

  test "should destroy only_layout" do
    assert_difference('OnlyLayout.count', -1) do
      delete :destroy, id: @only_layout
    end

    assert_redirected_to only_layouts_path
  end
end
