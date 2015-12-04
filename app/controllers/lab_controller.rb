class LabController < ApplicationController


  def new



  end


   def  delete

   @lab=Lab.find params[:id]

     @lab.destroy

     redirect_to '/lab/show'

   end

  def show
    @labs =Lab.all.page params[:page]

  end

  def edit

  @lab=Lab.find params[:id]


  end

  def update

    @lab=Lab.find params[:id]
    @lab.update lab_params

    @info ="修改成功"
  end
  def create

  @lab = Lab.new lab_params

    @lab.save
     @info ="创建成功"

    return render 'new'

  end

  protected



  def lab_params
    params.require(:lab).permit(:name,:position,:info)
  end



end
