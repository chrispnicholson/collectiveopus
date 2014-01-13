require 'test_helper'

class CollectivesControllerTest < ActionController::TestCase
  setup do
    @collective = collectives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collectives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collective" do
    assert_difference('Collective.count') do
      post :create, collective: { collective_id: @collective.collective_id, collective_name: @collective.collective_name, user_id: @collective.user_id }
    end

    assert_redirected_to collective_path(assigns(:collective))
  end

  test "should show collective" do
    get :show, id: @collective
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collective
    assert_response :success
  end

  test "should update collective" do
    put :update, id: @collective, collective: { collective_id: @collective.collective_id, collective_name: @collective.collective_name, user_id: @collective.user_id }
    assert_redirected_to collective_path(assigns(:collective))
  end

  test "should destroy collective" do
    assert_difference('Collective.count', -1) do
      delete :destroy, id: @collective
    end

    assert_redirected_to collectives_path
  end
end
