class HomeController < ApplicationController
  before_action ->(listener = self) { set_mp3_handler listener }, only: %w|index|, if: :user_signed_in?

  def index
    @mp3_files = @mp3_handler.mp3_uploads_for current_user
    @mp3 = @mp3_handler.new_mp3_upload
  end
end
