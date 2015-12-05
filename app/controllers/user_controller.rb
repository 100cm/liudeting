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


  def show

@users= User.all.page params[:page]

  end

  def add_admin

@user=User.find params[:id]

    @user.update(is_admin: true)


redirect_to '/user/show'


  end

  def cancel_admin

    @user=User.find params[:id]

    @user.update(is_admin: false)
    redirect_to '/user/show'


  end
end
