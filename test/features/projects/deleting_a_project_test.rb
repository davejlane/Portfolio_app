require "test_helper"

feature "As a site owner, I want to delete a project so that I can select which project I want to include" do
  scenario "deleting an exisiting project" do
    visit projects_path
    click_on "New Project"
    fill_in "Name", with: projects(:portfolio).name
    fill_in "Technologies used", with: projects(:portfolio).technologies_used
    click_on "Create Project"

    visit project_path(projects(:portfolio))

    click_on "Destroy"

    page.text.must_include "Project was successfully destroyed."

  end
end
