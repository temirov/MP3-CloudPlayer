class HomeController < ApplicationController
  before_action :get_users_mp3, only: :index, if: :user_signed_in?
  # before_action :get_music_upload

  def index
    @mp3 = Mp3Upload.new
  end
end
