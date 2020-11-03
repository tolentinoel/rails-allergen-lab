class AllergensController < ApplicationController
    def new
        @allergen = Allergen.new
    end

    def create
        @allergen = Allergen.new(allergen_params)

        if @allergen.save
            redirect_to @allergen.user
        else
            render :new
        end
    end

    def destroy
        get_allergen.destroy
        redirect_to @allergen.allergen
      end

      private

      def get_allergen
        @allergen = Allergen.find(params[:id])
      end

      def allergen_params
        params.require(:allergen).permit(:user_id, :ingredient_id)
      end

    end