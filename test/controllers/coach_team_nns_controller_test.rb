require 'test_helper'

class CoachTeamNnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coach_team_nn = coach_team_nns(:one)
  end

  test "should get index" do
    get coach_team_nns_url
    assert_response :success
  end

  test "should get new" do
    get new_coach_team_nn_url
    assert_response :success
  end

  test "should create coach_team_nn" do
    assert_difference('CoachTeamNn.count') do
      post coach_team_nns_url, params: { coach_team_nn: { coach: @coach_team_nn.coach, team: @coach_team_nn.team } }
    end

    assert_redirected_to coach_team_nn_url(CoachTeamNn.last)
  end

  test "should show coach_team_nn" do
    get coach_team_nn_url(@coach_team_nn)
    assert_response :success
  end

  test "should get edit" do
    get edit_coach_team_nn_url(@coach_team_nn)
    assert_response :success
  end

  test "should update coach_team_nn" do
    patch coach_team_nn_url(@coach_team_nn), params: { coach_team_nn: { coach: @coach_team_nn.coach, team: @coach_team_nn.team } }
    assert_redirected_to coach_team_nn_url(@coach_team_nn)
  end

  test "should destroy coach_team_nn" do
    assert_difference('CoachTeamNn.count', -1) do
      delete coach_team_nn_url(@coach_team_nn)
    end

    assert_redirected_to coach_team_nns_url
  end
end
