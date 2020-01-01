class ReadingGoalsController < ApplicationController
  before_action :set_reading_goal, only: [:show, :edit, :update, :destroy]

  # GET /reading_goals
  # GET /reading_goals.json
  def index
    @reading_goals = ReadingGoal.all
  end

  # GET /reading_goals/1
  # GET /reading_goals/1.json
  def show
  end

  # GET /reading_goals/new
  def new
    @reading_goal = ReadingGoal.new
  end

  # GET /reading_goals/1/edit
  def edit
  end

  # POST /reading_goals
  # POST /reading_goals.json
  def create
    @reading_goal = ReadingGoal.new(reading_goal_params)

    respond_to do |format|
      if @reading_goal.save
        format.html { redirect_to @reading_goal, notice: 'Reading goal was successfully created.' }
        format.json { render :show, status: :created, location: @reading_goal }
      else
        format.html { render :new }
        format.json { render json: @reading_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reading_goals/1
  # PATCH/PUT /reading_goals/1.json
  def update
    respond_to do |format|
      if @reading_goal.update(reading_goal_params)
        format.html { redirect_to @reading_goal, notice: 'Reading goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading_goal }
      else
        format.html { render :edit }
        format.json { render json: @reading_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_goals/1
  # DELETE /reading_goals/1.json
  def destroy
    @reading_goal.destroy
    respond_to do |format|
      format.html { redirect_to reading_goals_url, notice: 'Reading goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_goal
      @reading_goal = ReadingGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reading_goal_params
      params.require(:reading_goal).permit(:title, :number_pages, :deadline, :pages_per_day)
    end
end
