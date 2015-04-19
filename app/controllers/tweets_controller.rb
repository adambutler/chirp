class TweetsController < ApplicationController
  before_filter :set_query

  def search
    @uid = SecureRandom.urlsafe_base64(nil, false)
    TwitterWorker.perform_async(@query, @uid)
    respond_to do |format|
      format.js
    end
  end

  private

  def set_query
    @query = params[:query]
  end
end
