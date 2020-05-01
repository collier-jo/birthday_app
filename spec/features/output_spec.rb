require 'spec_helper'



feature 'Output page ' do

  scenario "displays Happy Birthday if date input matches current date" do
    visit("/")
    fill_in("dd", with: "1")
    fill_in("mm", with: "5")
    click_button("Submit")
    expect(page).to have_content("Happy Birthday")
  end

  scenario "displays amount of days until birthday" do
    visit("/")
    fill_in("dd", with: "2")
    fill_in("mm", with: "5")
    click_button("Submit")
    expect(page).to have_content("1 day(s) until your birthday!")
  end 
end     