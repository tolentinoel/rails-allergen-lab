class RecipesController < ApplicationController
  def index
    if params[:sort]
      @recipes = Recipe.all.sort_by{|r| r.ingredients.count}.reverse
    else
      @recipes = Recipe.all
    end
  end

  def show
    get_recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

        if @recipe.valid?
            @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
  end

  def edit
    get_recipe
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
       redirect_to recipe_path(@recipe)
    else
       render :edit
   end
  end

  def destroy
    get_recipe.destroy
    redirect_to recipes_path
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :meal_type, :user_id)
  end
end
