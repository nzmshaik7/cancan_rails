class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
    	# byebug
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to :back, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

end
