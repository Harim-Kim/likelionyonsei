class FacebooklinksController < ApplicationController
  before_action :set_facebooklink, only: [:show, :edit, :update, :destroy]

  # GET /facebooklinks
  # GET /facebooklinks.json
  def index
    @facebooklinks = Facebooklink.all
  end

  # GET /facebooklinks/1
  # GET /facebooklinks/1.json
  def show
  end

  # GET /facebooklinks/new
  def new
    @facebooklink = Facebooklink.new
  end

  # GET /facebooklinks/1/edit
  def edit
  end

  # POST /facebooklinks
  # POST /facebooklinks.json
  def create
    @facebooklink = Facebooklink.new(facebooklink_params)

    respond_to do |format|
      if @facebooklink.save
        format.html { redirect_to @facebooklink, notice: 'Facebooklink was successfully created.' }
        format.json { render :show, status: :created, location: @facebooklink }
      else
        format.html { render :new }
        format.json { render json: @facebooklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facebooklinks/1
  # PATCH/PUT /facebooklinks/1.json
  def update
    respond_to do |format|
      if @facebooklink.update(facebooklink_params)
        format.html { redirect_to @facebooklink, notice: 'Facebooklink was successfully updated.' }
        format.json { render :show, status: :ok, location: @facebooklink }
      else
        format.html { render :edit }
        format.json { render json: @facebooklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebooklinks/1
  # DELETE /facebooklinks/1.json
  def destroy
    @facebooklink.destroy
    respond_to do |format|
      format.html { redirect_to facebooklinks_url, notice: 'Facebooklink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facebooklink
      @facebooklink = Facebooklink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facebooklink_params
      params.require(:facebooklink).permit(:name, :url)
    end
end
