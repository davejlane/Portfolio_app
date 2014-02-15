require "test_helper"

feature "As a site owner, I want to delete a project so that I can select which project I want to include" do
  scenario "deleting an exisiting project" do

    visit project_path(projects(:portfolio))

    click_on "Destroy"

    page.text.must_include "Project was successfully destroyed."

  end
end
