require 'spec_helper'

feature 'Output page ' do
  
  before do
    date = Time.new 
    @day = date.day 
    @month = date.month
  end 


  scenario "displays Happy Birthday if date input matches current date" do
    visit("/")
    fill_in("dd", with: "#{@day}")
    fill_in("mm", with: "#{@month}")
    click_button("Submit")
    expect(page).to have_content("Happy Birthday")
  end

  scenario "displays amount of days until birthday" do
    visit("/")
    fill_in("dd", with: "#{@day + 1}")
    fill_in("mm", with: "#{@month}")
    click_button("Submit")
    expect(page).to have_content("1 day(s) until your birthday!")
  end 
end     