require 'spec_helper'

describe "Home" do
  it 'should have the right title' do
    visit root_path
    expect(page).to have_content('Grapes')
  end
end
