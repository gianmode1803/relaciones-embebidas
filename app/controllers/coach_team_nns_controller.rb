class CoachTeamNnsController < ApplicationController
  before_action :set_coach_team_nn, only: [:show, :edit, :update, :destroy]

  # GET /coach_team_nns
  # GET /coach_team_nns.json
  def index
    @coach_team_nns = CoachTeamNn.all
  end

  # GET /coach_team_nns/1
  # GET /coach_team_nns/1.json
  def show
  end

  # GET /coach_team_nns/new
  def new
    @coach_team_nn = CoachTeamNn.new
  end

  # GET /coach_team_nns/1/edit
  def edit
  end

  # POST /coach_team_nns
  # POST /coach_team_nns.json
  def create
    @coach_team_nn = CoachTeamNn.new(coach_team_nn_params)

    respond_to do |format|
      if @coach_team_nn.save
        format.html { redirect_to @coach_team_nn, notice: 'Coach team nn was successfully created.' }
        format.json { render :show, status: :created, location: @coach_team_nn }
      else
        format.html { render :new }
        format.json { render json: @coach_team_nn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_team_nns/1
  # PATCH/PUT /coach_team_nns/1.json
  def update
    respond_to do |format|
      if @coach_team_nn.update(coach_team_nn_params)
        format.html { redirect_to @coach_team_nn, notice: 'Coach team nn was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach_team_nn }
      else
        format.html { render :edit }
        format.json { render json: @coach_team_nn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_team_nns/1
  # DELETE /coach_team_nns/1.json
  def destroy
    @coach_team_nn.destroy
    respond_to do |format|
      format.html { redirect_to coach_team_nns_url, notice: 'Coach team nn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_team_nn
      @coach_team_nn = CoachTeamNn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_team_nn_params
      params.require(:coach_team_nn).permit(:coach, :team)
    end
end
