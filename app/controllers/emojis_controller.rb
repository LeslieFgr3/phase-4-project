class EmojisController < ApplicationController
  before_action :set_emoji, only: [:show, :update, :destroy]

  # GET /emojis
  def index
    @emojis = Emoji.all

    render json: @emojis
  end

  # GET /emojis/1
  def show
    render json: @emoji
  end

  # POST /emojis
  def create
    @emoji = Emoji.new(emoji_params)

    if @emoji.save
      render json: @emoji, status: :created, location: @emoji
    else
      render json: @emoji.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emojis/1
  def update
    if @emoji.update(emoji_params)
      render json: @emoji
    else
      render json: @emoji.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emojis/1
  def destroy
    @emoji.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emoji
      @emoji = Emoji.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emoji_params
      params.fetch(:emoji, {})
    end
end
