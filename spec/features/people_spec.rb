require 'rails_helper'

feature 'People' do

  scenario 'People must have a first name' do
    visit people_path
    click_on 'New Person'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('First name can\'t be blank')
  end

  scenario 'People must have a last name' do
    visit people_path
    click_on 'New Person'
    fill_in 'First name', with: 'Charlie'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('Last name can\'t be blank')
  end

  scenario 'People must have a date of birth' do
    visit people_path
    click_on 'New Person'
    fill_in 'First name', with: 'Joe'
    fill_in 'Last name', with: 'Smith'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('Date of birth can\'t be blank')
  end

  scenario 'First name must be longer than 2 characters' do
    visit people_path
    click_on 'New Person'
    fill_in 'First name', with: 'J'
    fill_in 'Last name', with: 'Smith'
    fill_in 'Date of birth', with: '1982-02-20'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('First name is too short (minimum is 2 characters)')
  end

  scenario 'Last name must be longer than 2 characters' do
    visit people_path
    click_on 'New Person'
    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'S'
    fill_in 'Date of birth', with: '1982-02-20'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('Last name is too short (minimum is 2 characters)')
  end

  scenario 'Date of birth cannot be in the future' do
    visit people_path
    click_on 'New Person'
    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Smith'
    fill_in 'Date of birth', with: '2020-02-03'
    click_on 'Create Person'
    expect(page).to have_no_content('saved successfully')
    expect(page).to have_content('Date of birth can\'t be in the future')
  end
end

#
# feature 'Organizations' do
#
#   scenario 'Organizations must have a Name' do
#     visit organizations_path
#     click_on 'New Organization'
#     click_on 'Create Organization'
#     expect(page).to have_no_content("saved successfully")
#     expect(page).to have_content('Name can\'t be blank')
#   end
