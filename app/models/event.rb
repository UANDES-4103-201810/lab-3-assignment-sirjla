class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets

  def self.most_tickets_sold
    purchases = Purchase
                  .joins(:ticket)
                  .group(:event_id)
                  .count()
    max_value = 0
    max_key = 0
    purchases.each do |key, value|
      if value > max_value
        max_value = value
        max_key = key
      end
    end
    max_key
  end

  def self.highest_revenue
    purchases = Purchase
                  .joins(:ticket)
                  .group(:event_id)
                  .sum(:price)
    max_value = 0
    max_key = 0
    purchases.each do |key, value|
      if value > max_value
        max_value = value
        max_key = key
      end
    end
    max_key
  end
end
