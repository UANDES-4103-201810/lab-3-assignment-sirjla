class User < ApplicationRecord
  has_many :tickets, :through => :purchase
  has_many :purchases

  def User.most_expensive_ticket_bought(id)
    purchases = Purchase
                  .where(:user => id)
                  .joins(:ticket)
    ticket = Ticket
                .where(:id => purchases)
                .order('price desc')
                .limit(1)
    ticket[0].price
  end

  def User.most_expensive_ticket_bought_between(id, start_date, end_date)
    purchases = Purchase
                    .where(:user => id)
                    .where('time <= ?', start_date)
                    .where('time >= ?', end_date)
                    .joins(:ticket)
    ticket = Ticket
                 .where(:id => purchases)
                 .order('price desc')
                 .limit(1)
    ticket[0].price
  end

  def User.last_event(id)
    purchases = Purchase
                    .where(:user => id)
                    .order('time desc')
                    .joins(:ticket)
                    .limit(1)
    ticket = Ticket
              .find(purchases[0].id)

    ticket.event.name
  end
end
