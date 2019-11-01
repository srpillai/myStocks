class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_c6b30dfe69784b938f03944ad40c4298' ) 

    if params[:ticker] == ""
        @nothing = "Hey! You Forgot To Enter a Symbol!"
    elsif params[:ticker]
      begin
        @stock =  StockQuote::Stock.quote(params[:ticker])
      rescue
        @error = "That Stock Symbol Doesn't Exist..... Please Try Again!"
      end
    end
  end

  def about
  end
end
