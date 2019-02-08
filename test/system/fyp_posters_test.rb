require "application_system_test_case"

class FypPostersTest < ApplicationSystemTestCase
  setup do
    @fyp_poster = fyp_posters(:one)
  end

  test "visiting the index" do
    visit fyp_posters_url
    assert_selector "h1", text: "Fyp Posters"
  end

  test "creating a Fyp poster" do
    visit fyp_posters_url
    click_on "New Fyp Poster"

    fill_in "Moderator name", with: @fyp_poster.moderator_name
    fill_in "P", with: @fyp_poster.p_id
    fill_in "P title", with: @fyp_poster.p_title
    fill_in "Student", with: @fyp_poster.student_id
    fill_in "Student name", with: @fyp_poster.student_name
    fill_in "Supervisor name", with: @fyp_poster.supervisor_name
    click_on "Create Fyp poster"

    assert_text "Fyp poster was successfully created"
    click_on "Back"
  end

  test "updating a Fyp poster" do
    visit fyp_posters_url
    click_on "Edit", match: :first

    fill_in "Moderator name", with: @fyp_poster.moderator_name
    fill_in "P", with: @fyp_poster.p_id
    fill_in "P title", with: @fyp_poster.p_title
    fill_in "Student", with: @fyp_poster.student_id
    fill_in "Student name", with: @fyp_poster.student_name
    fill_in "Supervisor name", with: @fyp_poster.supervisor_name
    click_on "Update Fyp poster"

    assert_text "Fyp poster was successfully updated"
    click_on "Back"
  end

  test "destroying a Fyp poster" do
    visit fyp_posters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fyp poster was successfully destroyed"
  end
end
