class JourneysController < ApplicationController
  before_action :set_journey, only: [:show, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:creator, :new, :create, :edit, :update, :destroy]



  # GET /journeys
  # GET /journeys.json
  def creator
    @journeys = Journey.where(user: current_user).order("created_at DESC")
  end

  def index
    @journeys = Journey.order("created_at DESC")
  end

  # GET /journeys/1
  # GET /journeys/1.json
  def show

  end

  # GET /journeys/new
  def new
    @journey = Journey.new
    @journey.clues.build
  end

  # GET /journeys/1/edit
  def edit
  end

  # POST /journeys
  # POST /journeys.json
  def create
    @journey = Journey.new(journey_params)
    @journey.user_id = current_user.id

    respond_to do |format|
      if @journey.save
        format.html { redirect_to @journey, notice: 'Journey was successfully created.' }
        format.json { render :show, status: :created, location: @journey }
      else
        format.html { render :new }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journeys/1
  # PATCH/PUT /journeys/1.json
  def update
    respond_to do |format|
      if @journey.update(journey_params)
        format.html { redirect_to @journey, notice: 'Journey was successfully updated.' }
        format.json { render :show, status: :ok, location: @journey }
      else
        format.html { render :edit }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journeys/1
  # DELETE /journeys/1.json
  def destroy
    @journey.destroy
    respond_to do |format|
      format.html { redirect_to journeys_url, notice: 'Journey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey
      @journey = Journey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journey_params
      params.require(:journey).permit(:category, :destination, :validation, :first_clue, :first_image, :user_id, :answer, :image, :remote_image_url, :name, :difficulty, :description, clues_attributes: [:remote_image_url, :image, :content, :id, :_destroy])
    end
  
     def check_user
      if current_user != @journey.user
        redirect_to root_url, alert: "Sorry, this journey belongs to someone else."
      end
    end

end
