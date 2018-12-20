class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find_by(id: params[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = current_user.trainings.create(training_params)
    redirect_to root_path
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
    redirect_to @training
  end

  private

  def training_params
    params.require(:training).permit(:name, :image, :jobTitle ,:description, :place, :start, :end)
  end
end
