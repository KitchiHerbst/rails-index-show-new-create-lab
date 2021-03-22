class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save
        redirect_to @coupon
    end

    def edit
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end

end