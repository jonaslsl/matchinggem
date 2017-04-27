class MatchCriteriaController < ApplicationController
  before_action :set_match_criterium, only: [:show, :edit, :update, :destroy]

  # GET /match_criteria
  # GET /match_criteria.json
  def index
    @match_criteria = MatchCriterium.all
  end

  # GET /match_criteria/1
  # GET /match_criteria/1.json
  def show
  end

  # GET /match_criteria/new
  def new
    @match_criterium = MatchCriterium.new
  end

  # GET /match_criteria/1/edit
  def edit
  end

  # POST /match_criteria
  # POST /match_criteria.json
  def create
    @match_criterium = MatchCriterium.new(match_criterium_params)

    respond_to do |format|
      if @match_criterium.save
        format.html { redirect_to @match_criterium, notice: 'Match criterium was successfully created.' }
        format.json { render :show, status: :created, location: @match_criterium }
      else
        format.html { render :new }
        format.json { render json: @match_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_criteria/1
  # PATCH/PUT /match_criteria/1.json
  def update
    respond_to do |format|
      if @match_criterium.update(match_criterium_params)
        format.html { redirect_to @match_criterium, notice: 'Match criterium was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_criterium }
      else
        format.html { render :edit }
        format.json { render json: @match_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_criteria/1
  # DELETE /match_criteria/1.json
  def destroy
    @match_criterium.destroy
    respond_to do |format|
      format.html { redirect_to match_criteria_url, notice: 'Match criterium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_criterium
      @match_criterium = MatchCriterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_criterium_params
      params.require(:match_criterium).permit(:title, :match_category_id)
    end
end
