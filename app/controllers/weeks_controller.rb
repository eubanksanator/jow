class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  def index
    @weeks = Week.all
  end

  def show
  end

  def new
    @week = Week.new
    @days_for_a_week = []
    @wo_for_day = []
    7.times {@days_for_a_week << @week.days.build}

  # Must figure out how to connect a build field for a workout to a day of the week (just one)
  end

  def edit
  end

  def create
    @week = Week.new(week_params)

    respond_to do |format|
      if @week.save
        format.html { redirect_to weeks_url, notice: 'week was successfully created.' }
        format.json { render :show, status: :created, location: @week }
      else
        format.html { render :new }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'week was successfully updated.' }
        format.json { render :show, status: :ok, location: @week }
      else
        format.html { render :edit }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def week_params
      params.require(:week).permit(:week_number,
        days_attributes: [:name, :week_id])
      # how to get 'workouts_attributes: [] to work'
    end
  end
