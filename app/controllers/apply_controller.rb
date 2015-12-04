class ApplyController < ApplicationController


  def index

  @applies =Apply.where(:is_failed => false ,:is_success => false)





  end

  def agree_apply



    @equipment=Equipment.find_by_id(params[:id])

    @user=User.find params[:user_id]

    @equipment.update(is_borrowed:true,borrow_user_name:@user.username,borrow_time: Time.new, borrow_user_id: params[:user_id])

    @results=Apply.where(:equip_id => params[:id])


    @results.each do |r|

      if r.user_id!= params[:user_id]
      r.update(is_failed:true)
      else
        r.update(is_success:true)

      end


    end

redirect_to '/manage/apply'




  end

  def decline_apply


    @apply =Apply.find params[:id]


    @apply.update(is_success:false ,is_failed:true)

    redirect_to '/manage/apply'
  end
end
