class Mp3UploadsController < ApplicationController
  before_action ->(listener = self) { set_mp3_handler listener }, only: %w|create destroy|

  def create
    @mp3_handler.upload mp3_upload_params, current_user
  end

  def destroy
    @mp3_handler.delete params[:id]
  end

  def operation_succeeded_with message
    redirect_to root_path, notice: message
  end

  def operation_failed_with message
    redirect_to root_path, alert: message
  end

  private
    def mp3_upload_params
      params.require(:mp3_upload).permit(:mp3)
    end
end
