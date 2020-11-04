class IngercpesController < ApplicationController

  def index
    @ingercpes = Ingercpe.all
  end

  def show
    get_ingercpe
  end

  def new
    @ingercpe = Ingercpe.new
  end

  def create
    @ingercpe = Ingercpe.new(ingercpe_params)

        if @ingercpe.save
            redirect_to @ingercpe.recipe
        else
            render :new
        end
  end

  def edit
    get_ingercpe
  end

  def update
    @ingercpe.update(ingercpe_params)
    if @ingercpe.save
       redirect_to ingercpe_path(@ingercpe)
    else
       render :edit
   end
  end

  def delete
  end

  private 

  def get_ingercpe
    @ingercpe = Ingercpe.find(params[:id])
  end

  def ingercpe_params
    params.require(:ingercpe).permit(:ingredient_id, :recipe_id, :measurement)
  end

end