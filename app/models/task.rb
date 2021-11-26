class Task < ApplicationRecord
  def self.order_this_way
    order("title ASC")
  end
end
