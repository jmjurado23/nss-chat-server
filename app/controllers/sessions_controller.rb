class SessionsController < ApplicationController
  respond_to :html, :json

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    respond_to do |format|
      format.json { render :json => @session.as_api_response(:general), status: 204}
    end
  end

  def create
    @session = Session.new( session_params )
    @session.save
    respond_to do |format|
      format.json { render :json => @session.as_api_response(:general) }
    end
  end

  private

  def session_params
    params.require(:session).permit(:user_avatar, :user_name)
  end
end
