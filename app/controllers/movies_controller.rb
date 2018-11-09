class MoviesController < ApplicationController
  def search
    if params[:recherche] && !params[:recherche].empty?
      redirect_to controller: 'home', action: 'index', recherche: search_params[:recherche]
    end
  end

  private
  def search_params
    params.permit(:recherche)
  end
end
