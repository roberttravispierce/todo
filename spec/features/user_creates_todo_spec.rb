require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Add New Todo"
    fill_in "Title", with: "Say hello"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Say hello"
    # expect(page).to have_content('Test Todo')
  end
end
