class RootsController < ApplicationController
  def top
    @estates = Estate.all.order(created_at: :desc)
    @form = PrefectureFindForm.new
  end

  def result
    @form = PrefectureFindForm.new(root_params)
    @citys = City.where(prefecture_id: @form.prefecture_id)
    # binding.pry
    # @estates = Estate.where(city_id: @citys).count
    @prefecture = Prefecture.where(id: @form.prefecture_id)
  end

  def city_result
    @citys = Estate.where(city_id: params[:city_id])
    # binding.pry
  end

  def about
  end

  private
  def root_params
    params.require(:prefecture_find_form).permit(:prefecture_id)
  end


end
