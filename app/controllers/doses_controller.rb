class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(:cocktail_id)
    @ingredient = Ingredient.find(:ingredient_id)
    @dose = Dose.new
  end

  def create
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to @dose.cocktail
  end
end
