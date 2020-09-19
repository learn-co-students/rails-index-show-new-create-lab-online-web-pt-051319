class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render "index"
  end

  def new
    # render "new"
  end
  
  def show
    @coupon = Coupon.find(params[:id])
    render "show"
  end  

  def create
    # raise params.inspect
    @coupon = Coupon.new
    @coupon.store = params[:coupon][:store]
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
  
end  