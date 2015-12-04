class EquipmentController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [ :create]
  def new

    render 'new'
  end

  def profile


  @equipment =Equipment.find params[:id]



  end

  def create_image




      render :json => {
                 :result => "asdasd"
             }


  end


  #器材入库 新建器材
  def create

  @equipment=Equipment.new equipment_params

  @equipment.post_user_id=current_user.id

  @equipment.post_user_name=current_user.username

  @equipment.avatar=params[:file]

  @equipment.save



  if @equipment.save



    @info="添加成功!"

  end

    render 'new'

  end

  def show

 @equipments=Equipment.all.page params[:page]


  render 'show'

  end

  def delete

   @equipment=Equipment.find_by_id(params[:id])


   if !current_user.admin?
    return  render text: "没有权限!<script type=\"text/javascript\">alert('没有权限');window.location.href='/equipment/show'</script>"

end
     @equipment.destroy
     redirect_to "/equipment/show"


  end

  def repair

 @equipments=Equipment.where(:is_damaged => true).page params[:page]



  end

  def apply

    @equipments =Equipment.where(:is_requested => false,:is_damaged => false,is_borrowed: false).page params[:page]


  end

  def add_apply

   @applies= Apply.where(:user_id => current_user.id,:equip_id => params[:id],:is_success => false)

    if !@applies.empty?


      return  render text: "失败<script type=\"text/javascript\">alert('请不要重复申请');window.location.href='/equipment/apply'</script>"

    else


      @apply =Apply.new
      @apply.equip_id=params[:id]


      @apply.user_id=current_user.id

      @apply.user_name=current_user.username

      @apply.save

      return  render text: "成功<script type=\"text/javascript\">alert('成功');window.location.href='/equipment/apply'</script>"
    end

  end


  def add_repair



    if !Equipment.find_by_id(params[:id]).nil?&&Equipment.find_by_id(params[:id]).is_borrowed==false

@equipment =Equipment.find_by_id(params[:id])

@equipment.update(is_damaged: true)

      if request.xhr?
      render :json => {
                 :message => "添加损坏设备成功"
             }
    end

    else

      if request.xhr?
        render :json => {
                   :message => "设备未存在库中"
               }
      end

      end
  end

  def complete_repair

    @equipment =Equipment.find_by_id(params[:id])


    @equipment.update(is_damaged: false,is_repairing:false)


    redirect_to "/equipment/repair"




  end

  def add_repair_report

    @equipment =Equipment.find_by_id(params[:id])

    @equipment.update(is_repairing: true)

    return  render text: "成功<script type=\"text/javascript\">alert('成功');window.location.href='/equipment/repair'</script>"


  end

  def edit

    @equipment=Equipment.find params[:id]


  end

  def update

    @equipment=Equipment.find params[:id]


    @equipment.update equipment_params


    return  render text: "成功<script type=\"text/javascript\">alert('成功');window.location.href='/equipment/#{params[:id]}/edit'</script>"

  end

  def revert

  @equipments = Equipment.where(:is_borrowed => true).page params[:page]


  end

  def delete_revert

    @equipment=Equipment.find params[:id]

    @apply =Apply.where(:user_id => params[:user_id],:equip_id => params[:id])

    @apply[0].update(return_time:Time.new)

    @equipment.update(is_borrowed:false ,borrow_user_name: nil)

    redirect_to "/equipment/revert"

  end

  protected

  def equipment_params
    params.require(:equipment).permit(:equipment_name,:count, :level,  :price, :is_damaged,:equipment_info)
  end

end
