class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  # GET /surveys
  def index
    @course = Course.find(params[:course_id])
    @surveys = @course.surveys
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @course = Course.find(params[:course_id])
    @survey = @course.surveys.build
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to @survey, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:name, :date, :course_id)
    end
end
