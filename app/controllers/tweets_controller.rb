class TweetsController < ApplicationController
  before_filter :set_query

  def search
    TwitterWorker.perform_async(@query)
    render nothing: true, status: 422
  end

  private

  def set_query
    @query = params[:query]
  end
end
