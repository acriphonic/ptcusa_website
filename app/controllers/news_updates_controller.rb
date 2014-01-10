class NewsUpdatesController < ApplicationController
  before_action :set_news_update, only: [:show, :edit, :update, :destroy]

  # GET /news_updates
  def index
    @news_updates = NewsUpdate.all
  end

  # GET /news_updates/1
  def show
  end

  # GET /news_updates/new
  def new
    @news_update = NewsUpdate.new
  end

  # GET /news_updates/1/edit
  def edit
  end

  # POST /news_updates
  def create
    @news_update = NewsUpdate.new(news_update_params)

    if @news_update.save
      redirect_to @news_update, notice: 'News update was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /news_updates/1
  def update
    if @news_update.update(news_update_params)
      redirect_to @news_update, notice: 'News update was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /news_updates/1
  def destroy
    @news_update.destroy
    redirect_to news_updates_url, notice: 'News update was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_update
      @news_update = NewsUpdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_update_params
      params.require(:news_update).permit(:title, :location, :date, :news, :picture)
    end
end
