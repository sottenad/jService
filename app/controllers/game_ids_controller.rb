class GameIdsController < ApplicationController
  before_action :set_game_id, only: [:show, :edit, :update, :destroy]

  # GET /game_ids
  def index
    @game_ids = GameId.all
  end

  # GET /game_ids/1
  def show
  end

  # GET /game_ids/new
  def new
    @game_id = GameId.new
  end

  # GET /game_ids/1/edit
  def edit
  end

  # POST /game_ids
  def create
    @game_id = GameId.new(game_id_params)

    if @game_id.save
      redirect_to @game_id, notice: 'Game was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /game_ids/1
  def update
    if @game_id.update(game_id_params)
      redirect_to @game_id, notice: 'Game was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /game_ids/1
  def destroy
    @game_id.destroy
    redirect_to game_ids_url, notice: 'Game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_id
      @game_id = GameId.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_id_params
      params.require(:game_id).permit(:id)
    end
end
