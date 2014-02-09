require "test_helper"

feature "As a site owner, I want to edit a project so that I can refine the content" do
  scenario "editing an exisiting project" do
    visit edit_project_path(projects(:portfolio))

    fill_in "Name", with: "Awesome Project"
    click_on "Update Project"

    page.text.must_include "Successfully"
    page.text.must_include "Awesome Project"
    page.text.wont_include "Code Fellows Portfolio"
  end

  scenario "incorrectly editing an existing project" do
    # Given an existing project
    visit edit_project_path(projects(:portfolio))
    fill_in "Name", with: "Err"

    # When I submit invalid changes
    click_on "Update Project"

    # Then the changes should not be saved, and I should get to try again
    page.text.must_include "Name is too short"
  end
end
