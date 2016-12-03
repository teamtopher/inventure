class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

  # GET /claims
  # GET /claims.json

   def creator_history
    @claims = Claim.all.where(creator: current_user).order("created_at DESC")
  end

  def explorer_history
    @claims = Claim.all.where(explorer: current_user).order("created_at DESC")
    @journeys = Journey.all
  end
  def profile
      @claims = Claim.all.where(creator: current_user).order("created_at DESC")
      @claims = Claim.all.where(explorer: current_user).order("created_at DESC")
      
  end 
  def scoreboard
    @claims = Claim.all
    @journeys = Journey.all
  end 


  def index
     @claims = Claim.all.order('created_at DESC')
    @journeys = Journey.all

  end

  # GET /claims/1
  # GET /claims/1.json
  def show
    @journeys = Journey.all
  end

  # GET /claims/new
  def new
    @claim = Claim.new
    @journey = Journey.find(params[:journey_id])
  end

  # GET /claims/1/edit
  def edit
  end

  # POST /claims
  # POST /claims.json
  def create
    @claim = Claim.new(claim_params)
 
    @journey = Journey.find(params[:journey_id])
    @creator = @journey.user

    @claim.journey_id = @journey.id
    @claim.explorer_id = current_user.id
    @claim.creator_id = @creator.id


    respond_to do |format|
      if @claim.save
        format.html { redirect_to journey_claims_path, notice: 'Claim was successfully created.' }
        format.json { render :show, status: :created, location: @claim }
      else
        format.html { render :new }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claims/1
  # PATCH/PUT /claims/1.json
  def update
    respond_to do |format|
      if @claim.update(claim_params)
        format.html { redirect_to explorer_history_url, notice: 'Claim was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim }
      else
        format.html { render :edit }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claims/1
  # DELETE /claims/1.json
  def destroy
    @claim.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Claim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim
      @claim = Claim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_params
      params.require(:claim).permit(:validation, :answer, :user_id, :journey_id, :points)
    end
end
