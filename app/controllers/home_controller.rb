class HomeController < ApplicationController
  def index
    puts params
    if params[:crypto]
      @crypto = Crypto.find(params[:crypto][:crypto])
    end
  end

  def find
    @crypto = Crypto.find_by(name: "#{params[:name]}")
    params = Hash.new
    if @crypto
      params = {crypto: @crypto.id}
    else
      flash[:notice] = "Cette cryptomonnaie n'existe pas"
    end
    redirect_to controller: "home", action: "index", crypto: params
  end
end
