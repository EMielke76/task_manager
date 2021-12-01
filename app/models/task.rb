class Task < ApplicationRecord
  def laundry?
    if title == 'laundry'
      true
    elsif description == 'laundry'
      true
    else
      false
    end
  end

  def self.order_this_way
    order("title ASC")
  end
end
