require 'test_helper'

class ListOfWaterfallsControllerTest < ActionController::TestCase
  setup do
    @list_of_waterfall = list_of_waterfalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_of_waterfalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_of_waterfall" do
    assert_difference('ListOfWaterfall.count') do
      post :create, list_of_waterfall: { country: @list_of_waterfall.country, description: @list_of_waterfall.description, height: @list_of_waterfall.height, locality: @list_of_waterfall.locality, name: @list_of_waterfall.name }
    end

    assert_redirected_to list_of_waterfall_path(assigns(:list_of_waterfall))
  end

  test "should show list_of_waterfall" do
    get :show, id: @list_of_waterfall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_of_waterfall
    assert_response :success
  end

  test "should update list_of_waterfall" do
    patch :update, id: @list_of_waterfall, list_of_waterfall: { country: @list_of_waterfall.country, description: @list_of_waterfall.description, height: @list_of_waterfall.height, locality: @list_of_waterfall.locality, name: @list_of_waterfall.name }
    assert_redirected_to list_of_waterfall_path(assigns(:list_of_waterfall))
  end

  test "should destroy list_of_waterfall" do
    assert_difference('ListOfWaterfall.count', -1) do
      delete :destroy, id: @list_of_waterfall
    end

    assert_redirected_to list_of_waterfalls_path
  end
end
