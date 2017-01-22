class FavouritesController < ApplicationController
  before_action :load_condo

  def show
    @favourite = Favourite.find(params[:id])
  end

  def create
    @favourite = @condo.favourites.build(favourite_params)
    @favourite.user = current_user

    if @favourite.save
      redirect_to condos_url, notice: 'Condo favourited successfully'
    else
      render 'condos/show'
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
  end

  private
  def favourite_params
    params.require(:favourite).permit(:heart, :condo_id)
  end

  def load_condo
    @condo = Condo.find(params[:condo_id])
  end
end
