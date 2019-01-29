require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "creating a House" do
    visit houses_url
    click_on "New House"

    fill_in "Area", with: @house.area
    fill_in "Basement", with: @house.basement
    fill_in "Builtyear", with: @house.builtyear
    fill_in "Company", with: @house.company_id
    fill_in "Currentowner", with: @house.currentowner
    fill_in "Location", with: @house.location
    fill_in "Price", with: @house.price
    fill_in "Style", with: @house.style
    fill_in "Totalfloors", with: @house.totalfloors
    fill_in "User", with: @house.user_id
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "updating a House" do
    visit houses_url
    click_on "Edit", match: :first

    fill_in "Area", with: @house.area
    fill_in "Basement", with: @house.basement
    fill_in "Builtyear", with: @house.builtyear
    fill_in "Company", with: @house.company_id
    fill_in "Currentowner", with: @house.currentowner
    fill_in "Location", with: @house.location
    fill_in "Price", with: @house.price
    fill_in "Style", with: @house.style
    fill_in "Totalfloors", with: @house.totalfloors
    fill_in "User", with: @house.user_id
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "destroying a House" do
    visit houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House was successfully destroyed"
  end
end
