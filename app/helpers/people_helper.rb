module PeopleHelper
  def tot_price
    tot_price = 0
    @person.items.each do |item|
      tot_price += item.qunt * item.price
    end
    tot_price
  end
  def sub_tot
    sub_tot = 0
    @person.items.each do |item|
      sub_tot += item.sub_total + item.tax
    end
    sub_tot
  end
  def total_due
    sub_tot + tot_price
  end
  def tot_tax
    tot_tax = 0
    @person.items.each do |item|
      tot_tax += item.tax
    end
    tot_tax
  end
  def sub_items
    all_items = 0
    @person.items.each do |item|
      all_items += item.sub_total
    end
    all_items
  end
  def org_cost
    @org_cost = 0
    @person.items.each do |item|
      @org_cost += item.org_price
    end
    @org_cost
  end
  def inv_profit
     sub_items - org_cost
  end
  def total_invoices
    total = 0
    Person.all.each do |per|
     total += per.inv_tot
    end
    total
  end
  def total_sub_total
    total = 0
    Person.all.each do |per|
     total += per.sub_itms
    end
    total
  end
  def total_taxes
    total = 0
    Person.all.each do |per|
     total += per.sub_tax
    end
    total
  end
  def total_cost
    total = 0
    Person.all.each do |per|
     total += per.org_itms_price
    end
    total
  end
  def total_cost
    total = 0
    Person.all.each do |per|
     total += per.org_itms_price
    end
    total
  end
  def total_profit
    total = 0
    Person.all.each do |per|
     total += per.tot_profit
    end
    total
  end
  def total_delivery
    total = 0
    Person.all.each do |per|
     total += per.delivery_fee
    end
    total
  end
  def total_margin
    total = 0
    Person.all.each do |per|
      total += per.tot_profit
      total = (total / Person.all.count).round(2)
    end
    total
    # (total_profit / total_sub_total * 100).round(2)
  end
end
