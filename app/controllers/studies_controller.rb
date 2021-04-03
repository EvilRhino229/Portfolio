class StudiesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @studies = Study.all
  end

  def show
    @study = Study.find(params[:id])
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new(
                  acaname: params[:acaname],
                  location: params[:location],
                  focus: params[:focus],
                  degree: params[:degree],
                  startdate: params[:startdate],
                  enddate: params[:enddate],
                  description: params[:description],
                  user_id: current_user.id
                  )
    if @study.save
      flash[:success] = "Study added!"
      redirect_to "/"
    else
      flash[:error] = "Error(s) encountered. See below"
      render 'new'
    end
  end

  def destroy
    @study = Study.find(params[:id])
    @study.destroy
    flash[:danger] = "Study removed"
    redirect_to "/studies/"
  end
end
