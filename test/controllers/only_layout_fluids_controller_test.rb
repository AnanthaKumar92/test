require 'test_helper'

class OnlyLayoutFluidsControllerTest < ActionController::TestCase
  setup do
    @only_layout_fluid = only_layout_fluids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:only_layout_fluids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create only_layout_fluid" do
    assert_difference('OnlyLayoutFluid.count') do
      post :create, only_layout_fluid: { age: @only_layout_fluid.age, description: @only_layout_fluid.description, name: @only_layout_fluid.name, qualification: @only_layout_fluid.qualification }
    end

    assert_redirected_to only_layout_fluid_path(assigns(:only_layout_fluid))
  end

  test "should show only_layout_fluid" do
    get :show, id: @only_layout_fluid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @only_layout_fluid
    assert_response :success
  end

  test "should update only_layout_fluid" do
    patch :update, id: @only_layout_fluid, only_layout_fluid: { age: @only_layout_fluid.age, description: @only_layout_fluid.description, name: @only_layout_fluid.name, qualification: @only_layout_fluid.qualification }
    assert_redirected_to only_layout_fluid_path(assigns(:only_layout_fluid))
  end

  test "should destroy only_layout_fluid" do
    assert_difference('OnlyLayoutFluid.count', -1) do
      delete :destroy, id: @only_layout_fluid
    end

    assert_redirected_to only_layout_fluids_path
  end
end
