class UserController < ApplicationController


  def cancel_apply


    @apply=Apply.find_by_id(params[:id])

   @apply.destroy


redirect_to '/user/my_apply'

  end

  def my_apply

    @applies=Apply.where(:user_id => current_user.id)


    render 'apply'

  end


  def edit



  end
end
