class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render "index"
  end

  def create
  end

  def new
  end
  
  def show
  end  
  
end  