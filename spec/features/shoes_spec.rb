require 'spec_helper'

feature 'Manage Shoes CRUD' do
  scenario 'User can create and view list of shoes' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Shoes'
    fill_in 'Shoe type', with: 'boots'
    fill_in 'Heel', with: 'flat'
    click_on 'Create Shoes'
    expect(page).to have_content 'boots'
    expect(page).to have_content 'flat'
  end
end