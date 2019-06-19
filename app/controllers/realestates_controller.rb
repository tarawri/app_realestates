class RealestatesController < ApplicationController
  
  before_action :authenticate_user!, only: [:index,:new,:edit,:update,:destroy,:create]

  def index
    user_id = current_user.id
    @user = User.find(user_id)
    @realestates = @user.realestates
  end

  def show
    @realestate = Realestate.find(params[:id])
    @commit = @realestate.commits.new
    @user = User.find(@realestate.user_id)
  end

  def new
    @realestate = Realestate.new 
    #{title:nil,details:nil,User_id:nil}
  end



  def edit
   @realestate = Realestate.find(params[:id])
  end

  def update
    @realestate = Realestate.find(params[:id]) 
    @realestate.update(realestate_params)
    redirect_to realestates_path
  
  
  end
  def create 
    user_id = current_user.id
    @realestate = Realestate.create(realestate_params)
    @realestate.user_id = user_id
    @realestate.save
    redirect_to realestates_path
  end 

  def destroy
    
    @realestate = Realestate.find(params[:id])
    @realestate.destroy
    redirect_to realestates_path
  end

  private
  def realestate_params 
    return params.require(:realestate).permit(:title,:details)
  end

end
