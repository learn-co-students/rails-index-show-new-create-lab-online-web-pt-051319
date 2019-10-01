class Coupon < ActiveRecord::Base
    def display
        self.coupon_code + " - " + self.store
    end
end