class DownloadsController < ApplicationController
  before_action :set_download, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:edit, :update, :destroy, :create]

  def index
    @downloads = Download.all
  end

  def new
    @download = Download.new
    resource = @download.resources.build
  end

  def edit
  end

  def create
    @download = Download.new(download_params)
    if @download.save
      flash[:notice] = "Successfully created download."
      redirect_to downloads_url
    else
      render :action => 'new'
    end
  end

  def update
    if @download.update_attributes(download_params)
      flash[:notice] = "Successfully updated download."
      redirect_to downloads_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @download.destroy
    flash[:notice] = 'Successfully destroyed download.'
    redirect_to downloads_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_download
      @download = Download.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def download_params
      params.require(:download).permit(:name, :description, resources_attributes: [:downloadable_id, :name, :version, :filepath, :_destroy])
    end
end
