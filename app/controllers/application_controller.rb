class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend
  require "date"

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

#  def counts(user)
#    @count_tickets = user.tickets.count
#  end
end

