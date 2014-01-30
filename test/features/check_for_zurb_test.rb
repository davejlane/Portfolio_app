require "test_helper"

feature "Check for zurb foundation framework" do
  scenario "On page load" do
    visit new_post_path
    page.has_css?('.columns')
  end
end

