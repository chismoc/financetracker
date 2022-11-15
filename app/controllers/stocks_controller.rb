class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
         render partial: 'users/result'
      else
        flash[:alert] = "This stock symbol does not exist  "
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "You didn't enter any symbol  "
       redirect_to my_portfolio_path
    end
  end
end