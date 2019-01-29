require "application_system_test_case"

class SearchesTest < ApplicationSystemTestCase
  setup do
    @search = searches(:one)
  end

  test "visiting the index" do
    visit searches_url
    assert_selector "h1", text: "Searches"
  end

  test "creating a Search" do
    visit searches_url
    click_on "New Search"

    fill_in "Basement", with: @search.basement
    fill_in "Location", with: @search.location
    fill_in "Max Area", with: @search.max_area
    fill_in "Max Price", with: @search.max_price
    fill_in "Max Year", with: @search.max_year
    fill_in "Min Area", with: @search.min_area
    fill_in "Min Price", with: @search.min_price
    fill_in "Min Year", with: @search.min_year
    fill_in "Style", with: @search.style
    fill_in "Totalfloors", with: @search.totalfloors
    click_on "Create Search"

    assert_text "Search was successfully created"
    click_on "Back"
  end

  test "updating a Search" do
    visit searches_url
    click_on "Edit", match: :first

    fill_in "Basement", with: @search.basement
    fill_in "Location", with: @search.location
    fill_in "Max Area", with: @search.max_area
    fill_in "Max Price", with: @search.max_price
    fill_in "Max Year", with: @search.max_year
    fill_in "Min Area", with: @search.min_area
    fill_in "Min Price", with: @search.min_price
    fill_in "Min Year", with: @search.min_year
    fill_in "Style", with: @search.style
    fill_in "Totalfloors", with: @search.totalfloors
    click_on "Update Search"

    assert_text "Search was successfully updated"
    click_on "Back"
  end

  test "destroying a Search" do
    visit searches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search was successfully destroyed"
  end
end
