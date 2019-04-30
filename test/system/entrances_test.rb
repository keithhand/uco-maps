require "application_system_test_case"

class EntrancesTest < ApplicationSystemTestCase
  setup do
    @entrance = entrances(:one)
  end

  test "visiting the index" do
    visit entrances_url
    assert_selector "h1", text: "Entrances"
  end

  test "creating a Entrance" do
    visit entrances_url
    click_on "New Entrance"

    fill_in "Building", with: @entrance.building_id
    fill_in "Latitude", with: @entrance.latitude
    fill_in "Longitude", with: @entrance.longitude
    click_on "Create Entrance"

    assert_text "Entrance was successfully created"
    click_on "Back"
  end

  test "updating a Entrance" do
    visit entrances_url
    click_on "Edit", match: :first

    fill_in "Building", with: @entrance.building_id
    fill_in "Latitude", with: @entrance.latitude
    fill_in "Longitude", with: @entrance.longitude
    click_on "Update Entrance"

    assert_text "Entrance was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrance" do
    visit entrances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrance was successfully destroyed"
  end
end
