class GeekWomenController < ApplicationController
  before_action :set_geek_woman, only: [:show, :edit, :update, :destroy]

  # GET /geek_women
  # GET /geek_women.json
  def index
    @geek_women = GeekWoman.all
  end

  # GET /geek_women/1
  # GET /geek_women/1.json
  def show
  end

  # GET /geek_women/new
  def new
    @geek_woman = GeekWoman.new
  end

  # GET /geek_women/1/edit
  def edit
  end

  # POST /geek_women
  # POST /geek_women.json
  def create
    @geek_woman = GeekWoman.new(geek_woman_params)

    respond_to do |format|
      if @geek_woman.save
        format.html { redirect_to @geek_woman, notice: 'Geek woman was successfully created.' }
        format.json { render :show, status: :created, location: @geek_woman }
      else
        format.html { render :new }
        format.json { render json: @geek_woman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geek_women/1
  # PATCH/PUT /geek_women/1.json
  def update
    respond_to do |format|
      if @geek_woman.update(geek_woman_params)
        format.html { redirect_to @geek_woman, notice: 'Geek woman was successfully updated.' }
        format.json { render :show, status: :ok, location: @geek_woman }
      else
        format.html { render :edit }
        format.json { render json: @geek_woman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geek_women/1
  # DELETE /geek_women/1.json
  def destroy
    @geek_woman.destroy
    respond_to do |format|
      format.html { redirect_to geek_women_url, notice: 'Geek woman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geek_woman
      @geek_woman = GeekWoman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geek_woman_params
      params.require(:geek_woman).permit(:name, :message, :picture)
    end
end
