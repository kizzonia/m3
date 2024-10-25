require "application_system_test_case"

class CcservicesTest < ApplicationSystemTestCase
  setup do
    @ccservice = ccservices(:one)
  end

  test "visiting the index" do
    visit ccservices_url
    assert_selector "h1", text: "Ccservices"
  end

  test "creating a Ccservice" do
    visit ccservices_url
    click_on "New Ccservice"

    fill_in "Body", with: @ccservice.body
    fill_in "Ccimg1", with: @ccservice.ccimg1
    fill_in "Slug", with: @ccservice.slug
    fill_in "Subtitle", with: @ccservice.subtitle
    fill_in "Title", with: @ccservice.title
    click_on "Create Ccservice"

    assert_text "Ccservice was successfully created"
    click_on "Back"
  end

  test "updating a Ccservice" do
    visit ccservices_url
    click_on "Edit", match: :first

    fill_in "Body", with: @ccservice.body
    fill_in "Ccimg1", with: @ccservice.ccimg1
    fill_in "Slug", with: @ccservice.slug
    fill_in "Subtitle", with: @ccservice.subtitle
    fill_in "Title", with: @ccservice.title
    click_on "Update Ccservice"

    assert_text "Ccservice was successfully updated"
    click_on "Back"
  end

  test "destroying a Ccservice" do
    visit ccservices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ccservice was successfully destroyed"
  end
end
