require 'rails_helper'

feature 'Organizations' do

  scenario 'Organizations must have a Name' do
    visit organizations_path
    click_on 'New Organization'
    click_on 'Create Organization'
    expect(page).to have_no_content("saved successfully")
    expect(page).to have_content('Name can\'t be blank')
  end

end
