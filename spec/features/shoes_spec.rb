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

  scenario 'User can edit and update list of shoes' do
    visit '/'
    click_on 'Add Shoes'
    fill_in 'Shoe type', with: 'boots'
    fill_in 'Heel', with: 'flat'
    click_on 'Create Shoes'
    expect(page).to have_content 'boots'
    expect(page).to have_content 'flat'
    click_on 'boots'
    expect(page).to have_content 'boots'
    expect(page).to have_content 'flat'
    click_on 'Edit'
    fill_in 'Shoe type', with: 'ballet'
    fill_in 'Heel', with: 'toe'
    click_on 'Update'
    expect(page).to have_no_content 'boots'
    expect(page).to have_no_content 'flat'
    expect(page).to have_content 'ballet'
    expect(page).to have_content 'toe'
  end

  scenario 'User can delete shoes from list' do
    visit '/'
    click_on 'Add Shoes'
    fill_in 'Shoe type', with: 'boots'
    fill_in 'Heel', with: 'flat'
    click_on 'Create Shoes'
    expect(page).to have_content 'boots'
    expect(page).to have_content 'flat'
    click_on 'boots'
    expect(page).to have_content 'boots'
    expect(page).to have_content 'flat'
    click_on 'Delete'
    expect(page).to have_no_content 'boots'
    expect(page).to have_no_content 'flat'
  end
end