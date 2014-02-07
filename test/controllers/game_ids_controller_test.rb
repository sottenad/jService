require 'test_helper'

class GameIdsControllerTest < ActionController::TestCase
  setup do
    @game_id = game_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_id" do
    assert_difference('GameId.count') do
      post :create, game_id: { id: @game_id.id }
    end

    assert_redirected_to game_id_path(assigns(:game_id))
  end

  test "should show game_id" do
    get :show, id: @game_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_id
    assert_response :success
  end

  test "should update game_id" do
    patch :update, id: @game_id, game_id: { id: @game_id.id }
    assert_redirected_to game_id_path(assigns(:game_id))
  end

  test "should destroy game_id" do
    assert_difference('GameId.count', -1) do
      delete :destroy, id: @game_id
    end

    assert_redirected_to game_ids_path
  end
end
