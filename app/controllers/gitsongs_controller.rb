class GitsongsController < ApplicationController
  before_action :set_gitsong, only: [:show, :edit, :update, :destroy]

  # GET /gitsongs
  # GET /gitsongs.json
  def index
    @gitsongs = Gitsong.all
    client = Octokit::Client.new(:access_token => ENV['GITHUB_KEY'])
    data = client.commits("shawn524/dotfiles")
    @commits = data.map do |el|
      el.commit.message
    end
    raise
  end

  # GET /gitsongs/1
  # GET /gitsongs/1.json
  def show
  end

  # GET /gitsongs/new
  def new
    @gitsong = Gitsong.new
  end

  # GET /gitsongs/1/edit
  def edit
  end

  # POST /gitsongs
  # POST /gitsongs.json
  def create
    @gitsong = Gitsong.new(gitsong_params)

    respond_to do |format|
      if @gitsong.save
        format.html { redirect_to @gitsong, notice: 'Gitsong was successfully created.' }
        format.json { render :show, status: :created, location: @gitsong }
      else
        format.html { render :new }
        format.json { render json: @gitsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gitsongs/1
  # PATCH/PUT /gitsongs/1.json
  def update
    respond_to do |format|
      if @gitsong.update(gitsong_params)
        format.html { redirect_to @gitsong, notice: 'Gitsong was successfully updated.' }
        format.json { render :show, status: :ok, location: @gitsong }
      else
        format.html { render :edit }
        format.json { render json: @gitsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gitsongs/1
  # DELETE /gitsongs/1.json
  def destroy
    @gitsong.destroy
    respond_to do |format|
      format.html { redirect_to gitsongs_url, notice: 'Gitsong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gitsong
      @gitsong = Gitsong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gitsong_params
      params.require(:gitsong).permit(:repo, :data, :share_url)
    end
end
