class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all.sort_by{|i| i.users.count}.reverse
  end

  def show
    get_ingr
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingr_params)

        if @ingredient.valid?
            @ingredient.save
            redirect_to ingredient_path(@ingredient)
        else
            render :new
        end
  end

  def edit
    get_ingr
  end

  def update
    @ingredient.update(ingr_params)
     if @ingredient.save
        redirect_to ingredient_path(@ingredient)
     else
        render :edit
    end
  end


  private 

  def get_ingr
    @ingredient = Ingredient.find(params[:id])
  end

  def ingr_params
    params.require(:ingredient).permit(:name)
  end


end
