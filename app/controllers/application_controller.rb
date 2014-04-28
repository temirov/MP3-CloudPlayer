require 'mp3_handler'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def set_mp3_handler listener
      @mp3_handler = Mp3Handler.new(listener)
    end
end
