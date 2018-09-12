class EstatesController < ApplicationController
  def index
    @estate = Estate.where(user_id: current_user.id).order(created_at: :desc)
  end

  def show
    @estates = Estate.find(params[:id])
    @estate = Picture.where(estate_id: @estates.id)
  end

  def edit
  end

  def new
    @estate = Estate.new
    @estate.pictures.build
  end

  def create
    @estate = Estate.new(estate_params)
    @estate.user_id = current_user.id
    @estate.save
    redirect_to user_path(current_user)
  end

  private

  def estate_params
    params.require(:estate).permit(:content, :name, :comment, :price, :prefecture_id, :city_id, :type_id, :area, pictures_attributes: [:picture, :_destroy])
  end

end
