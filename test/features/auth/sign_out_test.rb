require "test_helper"

feature("As a signed in guest I want to be able to sign out of an account so that nobody sharing this computer with me can access my account.") do
  scenario "sign out" do
    #Given that I am signed in.
    sign_in

    #When I click on sign out
    visit "/"
    click_on "Sign Out"

    #Then I will have signed out
    page.must_have_content "Sign In"

  end
end
