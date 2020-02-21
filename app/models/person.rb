class Person < ApplicationRecord
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: proc { |attr| attr['description'].blank? }
  # after_create :inv_itms, :inv_tax, :inv_total, :cost, :profit_inv, :prof_per
  after_create :inv_itms, :inv_tax, :inv_total, :cost, :profit_inv, :prof_per

  private
    def inv_itms
      inv_itms = 0
      self.items.each do |item|
        inv_itms += item.qunt * item.price
      end
      inv_itms
      self.update(sub_itms: inv_itms)
    end
    def aft_dis
      aft_dis = self.sub_itms - self.discount
    end
    def inv_tax
       inv_tax = aft_dis * 10.25 / 100
      self.update(sub_tax: inv_tax)
    end
    def inv_total

      inv_total = aft_dis + self.sub_tax + self.delivery_fee
      self.update(inv_tot: inv_total )
    end
    def cost
      cost = 0
      self.items.each do |item|
        cost += item.org_price * item.qunt
      end
      cost
      self.update(org_itms_price: cost)
    end
    def profit_inv
      profit_inv = aft_dis - self.org_itms_price
      self.update(tot_profit: profit_inv)
    end
    def prof_per
      prof_per = (self.tot_profit / self.sub_itms * 100).round(2)
      self.update(profit_per: prof_per)
    end
end
