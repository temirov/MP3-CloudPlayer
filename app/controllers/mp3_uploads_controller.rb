class Mp3UploadsController < ApplicationController
  before_action ->(mp3_upload_id = params[:id]) { find_mp3_upload mp3_upload_id }, only: :destroy

  def create
    @mp3 = current_user.mp3_uploads.build mp3_upload_params

    if @mp3.save
      redirect_to root_path, notice: "The file #{@mp3.mp3_file_name} has been uploaded to your CloudStorage"
    else
      redirect_to root_path, alert: "The file couldn't have been uploaded"
    end
  end

  def destroy
    if @mp3_upload.delete
      redirect_to root_path, notice: "The file #{@mp3_upload.mp3_file_name} has been successfully deleted"
    else
      redirect_to root_path, alert: "There was an error deleting file #{@mp3_upload.mp3_file_name}. Please, try again later"
    end
  end

  private
    def mp3_upload_params
      params.require(:mp3_upload).permit(:mp3)
    end
end
