class HomeController < ApplicationController
  def index
    puts params
    puts 'IINNNDEEEEEEEEEEEEEEEEEEEEEEEXXXXXXXXXXXXXXXXX'
    if params[:crypto]
      @crypto = Crypto.find(params[:crypto])
    elsif params[:recherche]
      @films = SearchMovie.new(params[:recherche]).perform
    end
  end

  def search_crypto
    @crypto = Crypto.find_by(name: "#{params[:name]}")
    params = Hash.new
    if @crypto
      params = {crypto: @crypto.id}
    else
      flash[:notice] = "Cette cryptomonnaie n'existe pas"
    end
    redirect_to controller: "home", action: "index", crypto: params[:crypto]
  end

end
