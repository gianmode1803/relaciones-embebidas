require "application_system_test_case"

class CoachTeamsTest < ApplicationSystemTestCase
  setup do
    @coach_team = coach_teams(:one)
  end

  test "visiting the index" do
    visit coach_teams_url
    assert_selector "h1", text: "Coach Teams"
  end

  test "creating a Coach team" do
    visit coach_teams_url
    click_on "New Coach Team"

    fill_in "Inicio", with: @coach_team.inicio
    click_on "Create Coach team"

    assert_text "Coach team was successfully created"
    click_on "Back"
  end

  test "updating a Coach team" do
    visit coach_teams_url
    click_on "Edit", match: :first

    fill_in "Inicio", with: @coach_team.inicio
    click_on "Update Coach team"

    assert_text "Coach team was successfully updated"
    click_on "Back"
  end

  test "destroying a Coach team" do
    visit coach_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coach team was successfully destroyed"
  end
end
