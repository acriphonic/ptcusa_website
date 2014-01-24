class NewsUpdatesController < ApplicationController
  before_action :set_news_update, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:edit, :update, :destroy, :create]

  def index
    @news_updates = NewsUpdate.all
  end

  def new
    @news_update = NewsUpdate.new
  end

  def edit
  end

  def create
    @news_update = NewsUpdate.new(news_update_params)

    if @news_update.save
      redirect_to news_updates_url, notice: 'News update was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @news_update.update(news_update_params)
      redirect_to news_updates_url, notice: 'News update was successfully updated.'
    else
      render action: 'edit'
    end
  end

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
