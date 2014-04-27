class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def get_users_mp3
      @mp3_files = current_user.mp3_uploads
    end

    def find_mp3_upload mp3_upload_id
      @mp3_upload = Mp3Upload.find mp3_upload_id
    end
end
