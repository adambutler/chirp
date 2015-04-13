class PusherController < ApplicationController
  protect_from_forgery :except => :auth

  def auth
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
      :user_id => 1
    })
    render :json => response
  end
end
