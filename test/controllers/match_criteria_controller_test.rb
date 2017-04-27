require 'test_helper'

class MatchCriteriaControllerTest < ActionController::TestCase
  setup do
    @match_criterium = match_criteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_criteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_criterium" do
    assert_difference('MatchCriterium.count') do
      post :create, match_criterium: { match_category_id: @match_criterium.match_category_id, title: @match_criterium.title }
    end

    assert_redirected_to match_criterium_path(assigns(:match_criterium))
  end

  test "should show match_criterium" do
    get :show, id: @match_criterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_criterium
    assert_response :success
  end

  test "should update match_criterium" do
    patch :update, id: @match_criterium, match_criterium: { match_category_id: @match_criterium.match_category_id, title: @match_criterium.title }
    assert_redirected_to match_criterium_path(assigns(:match_criterium))
  end

  test "should destroy match_criterium" do
    assert_difference('MatchCriterium.count', -1) do
      delete :destroy, id: @match_criterium
    end

    assert_redirected_to match_criteria_path
  end
end
