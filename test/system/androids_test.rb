require "application_system_test_case"

class AndroidsTest < ApplicationSystemTestCase
  setup do
    @android = androids(:one)
  end

  test "visiting the index" do
    visit androids_url
    assert_selector "h1", text: "Androids"
  end

  test "creating a Android" do
    visit androids_url
    click_on "New Android"

    fill_in "Brand", with: @android.brand
    fill_in "Camera", with: @android.camera
    fill_in "Internal Memory", with: @android.internal_memory
    fill_in "Mpixel", with: @android.mpixel
    fill_in "Name", with: @android.name
    fill_in "No Of Sim Slots", with: @android.no_of_sim_slots
    fill_in "No Of Stock", with: @android.no_of_stock
    fill_in "Size Of Screen", with: @android.size_of_screen
    fill_in "Year Released", with: @android.year_released
    click_on "Create Android"

    assert_text "Android was successfully created"
    click_on "Back"
  end

  test "updating a Android" do
    visit androids_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @android.brand
    fill_in "Camera", with: @android.camera
    fill_in "Internal Memory", with: @android.internal_memory
    fill_in "Mpixel", with: @android.mpixel
    fill_in "Name", with: @android.name
    fill_in "No Of Sim Slots", with: @android.no_of_sim_slots
    fill_in "No Of Stock", with: @android.no_of_stock
    fill_in "Size Of Screen", with: @android.size_of_screen
    fill_in "Year Released", with: @android.year_released
    click_on "Update Android"

    assert_text "Android was successfully updated"
    click_on "Back"
  end

  test "destroying a Android" do
    visit androids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Android was successfully destroyed"
  end
end
