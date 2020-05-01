require 'spec_helper'

feature 'Homepage' do

  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "Page has name field" do
    visit("/")
    expect(page).to have_field('name')
  end 

  scenario "Page has a dd field" do 
    visit("/")
    expect(page).to have_field('dd')
  end 

  scenario "Page has a mm field" do
    visit("/")
    expect(page).to have_field('mm')
  end 

  scenario "Page has a submit button" do 
    visit("/")
    expect(page).to have_button("Submit")
  end 
end 