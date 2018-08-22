class RootsController < ApplicationController
  def top
    @estates = Estate.all.order(created_at: :desc)
  end

  def about
  end


  private
    # def user_params
    #   params.require(:user).permit(:name,:email,:last_name,:last_name_furi,:first_name,:first_name_furi,:delivery_address_id,:zip,:address,:tel,:profile_image)

end
