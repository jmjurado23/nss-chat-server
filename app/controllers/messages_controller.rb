class MessagesController < ApplicationController
  before_filter :determine_scope,     only: :index

  respond_to :html, :json

  def index
    @messages = @scope
    respond_to do |format|
      format.json { render :json => @messages.as_api_response(:general) }
    end
  end

  def create
    @message = Message.new( wallpapers_params )
    @message.save
    respond_to do |format|
      format.json { render :json => @message.as_api_response(:general) }
    end
  end

  private

  def wallpapers_params
    params[:message][:date] = DateTime.now.strftime('%d/%m/%y %H:%M:%S')
    params.require(:message).permit(:user_avatar, :user_name, :date, :type, :message, :session_id)
  end

  def determine_scope
    @scope = Message.all
    @scope = @scope.where(:code.gte => params[:code]) if params[:code]
  end
end
