require 'spec_helper'



feature 'Output page ' do
 
  scenario "display user name" do
    visit("/")
    fill_in("name", with: "Jo")
    click_button("Submit")
    expect(page).to have_content("Jo")
  end

  scenario "display user dd dob" do
    visit("/")
    fill_in("dd", with: "06")
    click_button("Submit")
    expect(page).to have_content("06")
  end

  scenario "display user mm dob" do
    visit("/")
    fill_in("mm", with: "02")
    click_button("Submit")
    expect(page).to have_content("02")
  end

  scenario "display user mm dob" do
    visit("/")
    fill_in("dd", with: "1")
    fill_in("mm", with: "5")
    click_button("Submit")
    expect(page).to have_content("Happy Birthday")
  end
end     