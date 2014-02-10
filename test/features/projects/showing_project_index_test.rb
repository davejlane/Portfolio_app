require "test_helper"

feature "As the site visitor, I want to see a developer's portfolio" do
  scenario "viewing all projects" do

    # Given a a couple of projects (loaded from fixtures)
    visit projects_path
    click_on "New Project"
    fill_in "Name", with: projects(:portfolio).name
    fill_in "Technologies used", with: projects(:portfolio).technologies_used
    click_on "Create Project"

    # When I visit /projects
    visit projects_path

    # Then I should see a list of projects
    page.text.must_include "Barnyard Cereal"
    page.text.must_include "Ruby, Rails"
  end
end
