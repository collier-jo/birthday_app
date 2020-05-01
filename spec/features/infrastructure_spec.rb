require 'spec_helper'

feature 'Homepage' do

    scenario "page loads successfully" do
        visit("/")
        expect(page.status_code).to eq(200)
      end
      
    scenario 'Testing Infastructure' do
      visit("/")
      expect(page).to have_content('Homepage')
    end

end 