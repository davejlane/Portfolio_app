require "test_helper"

feature "Check for zurb foundation framework" do
  scenario "On page load" do
    visit new_post_path
    # page.has_css?('.columns')
    page.source.must_include("foundation_and_overrides.css")
    page.source.must_include("foundation.js")
  end
end

