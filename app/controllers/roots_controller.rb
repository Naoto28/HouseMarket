class RootsController < ApplicationController
  def top
  # pickup
    @estates_rand = Estate.order("RANDOM()").limit(3)

  # 渋谷のアイテム
    @shibuya_no = City.find(13)
    @estates_shibuya = Estate.where(city_id: @shibuya_no.id).order(created_at: :desc)

  # 新規登録
    @estates = Estate.all.order(created_at: :desc)

  # マンション表示
    @mansion_no = Type.find(1)
    @mansions = Estate.where(type_id: @mansion_no.id).order(created_at: :desc)

  # 検索フォームに使用
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
