class Place < ApplicationRecord

  def Place.last_attendance(id)
    ev = Event
          .where(:place => id)
          .where('start_date <= ?', Date.today())
          .order(!:start_date)
          .limit(1)

    tickets = Ticket
                .where(:event => ev)

    purchases = Purchase
                  .where(:ticket => tickets)
                  .where(:paid => true)
                  .count()

    purchases
  end
end
