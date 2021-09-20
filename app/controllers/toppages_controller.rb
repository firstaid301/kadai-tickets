class ToppagesController < ApplicationController
  
  def index
    if logged_in?
      @ticket = Ticket.all
      @ticket_all = Ticket.all 
#      @pagy, @microposts = pagy(current_user.feed_microposts.order(id: :desc))
    end
  end
end
