class TicketsController < ApplicationController
  before_action :require_user_logged_in
  require "date"
    
  def new
    @form_ticket = Ticket.new
#0920    @ticket = Ticket.new(:user_id => 1, :status => 1, :course => 'コース')
  end

  def create

    @ticket = Ticket.new
    @ticket.appt_datetime = params[:created_at]
    @ticket.course = params[:course] 
    @ticket.status =" 1".to_i  
    @ticket.user_id = current_user.id

    if @ticket.save
      flash[:success] = 'チケットが正常に登録されました'
      redirect_to root_path
    else
      flash.now[:danger] = 'チケットが登録されませんでした'
      render :new
    end
  end

  def edit()
    @ticket_edit = Ticket.find(params[:format])    
    if @ticket_edit.status == 1
      if @ticket_edit.update(:status => 2 ,:user_id => current_user.id )
        flash[:success] = 'チケットを予約しました。'
        redirect_back(fallback_location: root_path)
      else
        flash.now[:danger] = 'チケットの予約状況を変更できませんでした。'
        render :new
      end    
    else
      if @ticket_edit.update(:status => 1 ,:user_id => current_user.id )
        flash[:success] = 'チケットの予約を取り消しました。'
        redirect_back(fallback_location: root_path)
      else
        flash.now[:danger] = 'チケットの予約状況を変更できませんでした。'
        render :new
      end
    end
  end

  def destroy()
    @ticket_del = Ticket.find(params[:format])    
    @ticket_del.destroy
    flash[:success] = 'チケットを削除しました。'
    redirect_back(fallback_location: root_path)
  end

  def ticket_params
     params.require(:ticket).permit(:course) 
  end

end
