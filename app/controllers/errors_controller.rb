class ErrorsController < ApplicationController
  layout "application_landing_page"

  def not_found
    render status: 404
  end
 
  def internal_server
    render status: 500
  end
end