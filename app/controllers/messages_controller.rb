class WallpapersController < ApplicationController
  before_filter :determine_scope,     only: :index
  before_filter :determine_filter,    only: :index

  respond_to :html, :json

  def index
    @messages = @messages.where(@scope)
    respond_to do |format|
      format.json { render :json => @messages.as_api_response(:general) }
    end
  end

  def create
    @message = Message.new( wallpapers_params )
    @wallpaper.save
    respond_to do |format|
      format.json { render :json => @messages.as_api_response(:general) }
    end
  end

  private

  def wallpapers_params
    params[:message][:date] = DateTime.now.strftime('%d/%m/%y %H:%M:%S')
    params.require(:message).permit(:user_avatar, :user_name, :date, :type, :message)
  end

  def determine_scope
    @scope = Message.all
    @scope = @scope.where(:code.gte => params[:code]) if params[:code]
  end
end
