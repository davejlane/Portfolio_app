require "test_helper"


feature("As a returning visitor I want to be able to sign in to my account so that I will have access to my content") do
  scenario "sign in" do

    sign_in

    page.must_have_content "Signed in successfully."
  end
end
