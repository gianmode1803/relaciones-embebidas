class CoachTeamsController < ApplicationController
  before_action :set_coach_team, only: [:show, :edit, :update, :destroy]

  # GET /coach_teams
  # GET /coach_teams.json
  def index
    @coach_teams = CoachTeam.all
  end

  # GET /coach_teams/1
  # GET /coach_teams/1.json
  def show
  end

  # GET /coach_teams/new
  def new
    @coach_team = CoachTeam.new
  end

  # GET /coach_teams/1/edit
  def edit
  end

  # POST /coach_teams
  # POST /coach_teams.json
  def create
    @coach_team = CoachTeam.new(coach_team_params)

    respond_to do |format|
      if @coach_team.save
        format.html { redirect_to @coach_team, notice: 'Coach team was successfully created.' }
        format.json { render :show, status: :created, location: @coach_team }
      else
        format.html { render :new }
        format.json { render json: @coach_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_teams/1
  # PATCH/PUT /coach_teams/1.json
  def update
    respond_to do |format|
      if @coach_team.update(coach_team_params)
        format.html { redirect_to @coach_team, notice: 'Coach team was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach_team }
      else
        format.html { render :edit }
        format.json { render json: @coach_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_teams/1
  # DELETE /coach_teams/1.json
  def destroy
    @coach_team.destroy
    respond_to do |format|
      format.html { redirect_to coach_teams_url, notice: 'Coach team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_team
      @coach_team = CoachTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_team_params
      params.require(:coach_team).permit(:inicio)
    end
end
