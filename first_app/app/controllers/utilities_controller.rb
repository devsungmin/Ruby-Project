class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # unmbers = (1..45).to_a #to.a는 to array라는 줄임말로 1~45까지의 숫자가 출력 됨
    # random_numbers = unmbers.sample 6
    # @lucky_numbers = random_numbers.sort #오름차순으로 출력 됨
    @lucky_numbers = (1..45).to_a.sample(6).sort
  end

  def get_stock_info
    #사용자가 입력 하는곳
  end

  def show_stock_info
    #사용자 입력한것을 받아서 처리 하는곳
    #사용자가 get_stock_info에서 보낸 Data
    inputs = [ params[:symbol_1], params[:symbol_2], params[:symbol_3] ]
    @stock = StockQuote::Stock.quote(inputs)
  end
end