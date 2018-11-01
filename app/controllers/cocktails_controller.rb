class CocktailsController < ApplicationController
  # before_action :set_cocktail

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = set_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = set_cocktail
  end

  def update
    @cocktail = set_cocktail
    @cocktail.update(cocktail_params)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = set_cocktail
    @cocktail.destroy
    redirect_to cocktails_path
  end


  private

  def set_cocktail
    Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
