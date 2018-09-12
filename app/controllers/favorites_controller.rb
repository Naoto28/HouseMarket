class FavoritesController < ApplicationController

  def create
    @estate = Estate.find(params[:estate_id])
    @favorite = current_user.favorites.new(estate_id: @estate.id)
    @favorite.save
    respond_to do |format|
      format.js {render :template => "favorites/create",locals: { favorite: @favorite, estates: @estate} }
    end
  end


  def destroy
    @estate = Estate.find(params[:estate_id])
    @favorite = current_user.favorites.find_by(estate_id: params[:estate_id])
    @favorite.destroy
    respond_to do |format|
      format.js {render :template => "favorites/destroy",locals: { favorite: @favorite, estates: @estate} }
    end
  end

  def index
    @user = current_user
    @favorites = @user.favorites
    # お気に入りに入れたアイテムを配列に
    estates_array = @favorites.pluck(:estate_id)
    @estates = Estate.where(id: estates_array).order(created_at: :desc)
  end
end
