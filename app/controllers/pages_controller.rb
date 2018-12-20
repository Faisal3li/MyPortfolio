class PagesController < ApplicationController
  def home
    @projects = Project.all
    @trainings = Training.all
    @educations = Education.all
  end
end
