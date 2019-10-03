class Coupon < ActiveRecord::Base
    def code_store
        self.coupon_code + " - " + self.store
    end
end