require "test_helper"

feature "As the site owner, I want to add a portfolio item so that I can show off my work" do
  scenario "adding a new project" do
    visit projects_path
    click_on "New Project"
    fill_in "Name", with: projects(:cr).name
    fill_in "Technologies used", with: projects(:cr).technologies_used
    click_on "Create Project"
    page.text.must_include "Project has been created"
    page.text.must_include projects(:cr).name
    page.text.must_include projects(:cr).technologies_used
  end
end
