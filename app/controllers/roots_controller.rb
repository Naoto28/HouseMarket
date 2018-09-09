class RootsController < ApplicationController
  def top
    @estates_rand = Estate.order("RANDOM()").limit(3)
    @estates = Estate.all.order(created_at: :desc)
    @form = PrefectureFindForm.new
  end

  def result
    @form = PrefectureFindForm.new(root_params)
    @citys = City.where(prefecture_id: @form.prefecture_id).page(params[:page]).per(17)
    @prefecture = Prefecture.where(id: @form.prefecture_id)
  end

  def city_result
    @cities = City.find(params[:id])
    @estates = Estate.where(city_id: @cities.id)
  end

  def about
  end

  private
  def root_params
    params.require(:prefecture_find_form).permit(:prefecture_id)
  end


end
