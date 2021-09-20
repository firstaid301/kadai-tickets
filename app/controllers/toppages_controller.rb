class ToppagesController < ApplicationController

  def index
    if logged_in?
#      @ticket = Ticket.all
#      @ticket_all = Ticket.all 
#      @pagy, @tickets = pagy(Ticket.all, items: 5)
      @pagy, @tickets = pagy(Ticket.order(appt_datetime: :asc), items: 5)      
    end
  end
end
