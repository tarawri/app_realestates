class CommitsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def create 
    @realestate=Realestate.find(params[:realestate_id])
    @commit=@realestate.commits.new(commit_params)
    #@commemt.user_id=session[:user].to_i
    @commit.save
    redirect_to realestate_path(@realestate)

end

private 
def commit_params
  params.require(:commit).permit(:comment)
end


end
