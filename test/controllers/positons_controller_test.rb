require 'test_helper'

class PositonsControllerTest < ActionController::TestCase
  setup do
    @positon = positons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create positon" do
    assert_difference('Positon.count') do
      post :create, positon: { work_position: @positon.work_position }
    end

    assert_redirected_to positon_path(assigns(:positon))
  end

  test "should show positon" do
    get :show, id: @positon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @positon
    assert_response :success
  end

  test "should update positon" do
    patch :update, id: @positon, positon: { work_position: @positon.work_position }
    assert_redirected_to positon_path(assigns(:positon))
  end

  test "should destroy positon" do
    assert_difference('Positon.count', -1) do
      delete :destroy, id: @positon
    end

    assert_redirected_to positons_path
  end
end
