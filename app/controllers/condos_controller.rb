class CondosController < ApplicationController
  def index
    @condos = Condo.all
  end

  def show
    @condo = Condo.find(params[:id])

    if current_user
      @favourite = @condo.favourites.build
    end 
  end

  def new
    @condo = Condo.new
  end

  def edit
    @condo = Condo.find(params[:id])
  end

  def create
    @condo = Condo.new(condo_params)

    if @condo.save
      redirect_to condo_url
    else
      render :new
    end
  end

    def update
      @condo = Condo.find(params[:id])

      if @condo.update_attributes(condo_params)
        redirect_to condo_url(@condo)
      else
        render :edit
      end
    end

    def destroy
      @condo = Condo.find(params[:id])
      @condo.destroy
      redirect_to condos_url
    end

    private
    def condo_params
      params.require(:condo).permit(:number_of_rooms, :den, :price, :description, :unit)
    end

end
