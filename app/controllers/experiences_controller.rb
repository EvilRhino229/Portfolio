class ExperiencesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(
                  expname: params[:expname],
                  title: params[:title],
                  description: params[:description],
                  years: params[:years],
                  user_id: current_user.id
                  )
    if @experience.save
      flash[:success] = "Experience added!"
      redirect_to "/"
    else
      flash[:error] = "Oops."
      render 'new'
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    flash[:danger] = "Experience removed"
    redirect_to "/experiences/"
  end
end
