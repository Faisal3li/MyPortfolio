class EducationsController < ApplicationController
  def index
    @educations = Education.all
  end

  def show
    @education = Education.find_by(id: params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    @education = current_user.educations.create(education_params)
    redirect_to root_path
  end

  def edit
    @education = Education.find(params[:id])
  end

  def update
    @education = Education.find(params[:id])
    @education.update(education_params)
    redirect_to @education
  end

  private

  def education_params
    params.require(:education).permit(:name, :image, :description, :start, :end)
  end
end
