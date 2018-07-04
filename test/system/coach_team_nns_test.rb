require "application_system_test_case"

class CoachTeamNnsTest < ApplicationSystemTestCase
  setup do
    @coach_team_nn = coach_team_nns(:one)
  end

  test "visiting the index" do
    visit coach_team_nns_url
    assert_selector "h1", text: "Coach Team Nns"
  end

  test "creating a Coach team nn" do
    visit coach_team_nns_url
    click_on "New Coach Team Nn"

    fill_in "Coach", with: @coach_team_nn.coach
    fill_in "Team", with: @coach_team_nn.team
    click_on "Create Coach team nn"

    assert_text "Coach team nn was successfully created"
    click_on "Back"
  end

  test "updating a Coach team nn" do
    visit coach_team_nns_url
    click_on "Edit", match: :first

    fill_in "Coach", with: @coach_team_nn.coach
    fill_in "Team", with: @coach_team_nn.team
    click_on "Update Coach team nn"

    assert_text "Coach team nn was successfully updated"
    click_on "Back"
  end

  test "destroying a Coach team nn" do
    visit coach_team_nns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coach team nn was successfully destroyed"
  end
end
