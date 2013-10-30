class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      flash[:success] = 'Recipe saved successfully'
      redirect_to(new_recipe_url)
    else
      flash.now[:error] = 'Invalid input'
      render('new')
    end
  end
end
