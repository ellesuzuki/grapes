require 'spec_helper'

describe Recipe do
  before(:each) do
    @recipe = Recipe.new(:name => 'Something Yummy', :notes => 'Some notes here')
  end

  it 'should create a valid object' do
    @recipe.should respond_to(:name)
    @recipe.should respond_to(:notes)
    @recipe.should be_valid
  end

  it 'should not be valid without a name' do
    @recipe.name = nil
    @recipe.valid?.should be_false
  end

  it 'should be valid' do
    @recipe.notes = nil
    @recipe.valid?.should be_true
  end
end
