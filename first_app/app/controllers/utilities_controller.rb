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
  end
end
