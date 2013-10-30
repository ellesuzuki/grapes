require 'spec_helper'

describe 'Recipe Pages' do
  before(:each) do
    visit new_recipe_path
  end

  it 'should show relevant info' do
    page.has_field?('Name').should be_true
    page.has_field?('Notes').should be_true
    page.has_button?('Submit').should be_true
  end

  it 'should not save recipe' do
    click_button('Submit')
    page.has_content?('Invalid input').should be_true
    page.has_content?("Name can't be blank").should be_true
  end

  it 'should save recipe' do
    fill_in('Name', :with => 'Something Yummy')
    click_button('Submit')
    page.has_content?('Recipe saved successfully').should be_true
  end
end