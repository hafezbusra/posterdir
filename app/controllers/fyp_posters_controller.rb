class FypPostersController < ApplicationController
  before_action :set_fyp_poster, only: [:show, :edit, :update, :destroy]

  # GET /fyp_posters
  # GET /fyp_posters.json
  def index
    @fyp_posters = nil
    if params[:search] != nil
      @fyp_posters = FypPoster.search(params[:search])
    end
  end

  # GET /fyp_posters/1
  # GET /fyp_posters/1.json
  def show
  end

  # GET /fyp_posters/new
  def new
    @fyp_poster = FypPoster.new
  end

  # GET /fyp_posters/1/edit
  def edit
  end

  # POST /fyp_posters
  # POST /fyp_posters.json
  def create
    @fyp_poster = FypPoster.new(fyp_poster_params)

    respond_to do |format|
      if @fyp_poster.save
        format.html { redirect_to @fyp_poster, notice: 'Fyp poster was successfully created.' }
        format.json { render :show, status: :created, location: @fyp_poster }
      else
        format.html { render :new }
        format.json { render json: @fyp_poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fyp_posters/1
  # PATCH/PUT /fyp_posters/1.json
  def update
    respond_to do |format|
      if @fyp_poster.update(fyp_poster_params)
        format.html { redirect_to @fyp_poster, notice: 'Fyp poster was successfully updated.' }
        format.json { render :show, status: :ok, location: @fyp_poster }
      else
        format.html { render :edit }
        format.json { render json: @fyp_poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fyp_posters/1
  # DELETE /fyp_posters/1.json
  def destroy
    @fyp_poster.destroy
    respond_to do |format|
      format.html { redirect_to fyp_posters_url, notice: 'Fyp poster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fyp_poster
      @fyp_poster = FypPoster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fyp_poster_params
      params.require(:fyp_poster).permit(:p_id, :p_title, :student_name, :student_id, :supervisor_name, :moderator_name)
    end
end
