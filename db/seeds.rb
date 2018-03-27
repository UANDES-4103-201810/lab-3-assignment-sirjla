# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {
        name: 'Montserrat',
        last_name: 'Villegas',
        email: 'mxvillegas@miuandes.cl',
        phone: 123456789,
        password: '123456789',
        address: '12344556'
    },
    {
        name: 'Jose Luis',
        last_name: 'Assadi',
        email: 'jlassadi@miuandes.cl',
        phone: 123456739,
        password: '123456789',
        address: '12344556'
    },
    {
        name: 'sfsadjhbf',
        last_name: 'asfjasd',
        email: 'adsdasdas@miuandes.cl',
        phone: 23232424,
        password: '123456789',
        address: '12344556'
    },
    {
        name: 'Montseagdrrat',
        last_name: 'Vildfdflegas',
        email: 'mxvilsssslegas@miuandes.cl',
        phone: 23132423,
        password: '123456789',
        address: '12344556'
    },
    {
        name: 'asdfasfds<',
        last_name: 'Vilssdcxlegas',
        email: 'asasadasxz@miuandes.cl',
        phone: 123454532,
        password: '123456789',
        address: '12344556'
    },
])

place = Place.create(
                 name: 'Movistar Arena',
                 address: 'Only god knows',
                 capacity: 40000
)

events = Event.create([
    {
        name: 'Concierto 1',
        description: 'Esto es un concierto',
        start_date: '2018-04-27',
        place: place
    },
    {
        name: 'Concierto 2',
        description: 'Esto es un concierto',
        start_date: '2018-03-26',
        place: place
    },
    {
        name: 'Concierto 3',
        description: 'Esto es un concierto',
        start_date: '2013-04-27',
        place: place
    },
])

tickets = Ticket.create([
    {
        description: 'Tipo 1',
        price: 100,
        event: events[0]
    },
    {
        description: 'Tipo 2',
        price: 100,
        event: events[0]
    },
    {
        description: 'Tipo 3',
        price: 200,
        event: events[0]
    },
    {
        description: 'Tipo 1',
        price: 100,
        event: events[1]
    },
    {
        description: 'Tipo 2',
        price: 100,
        event: events[1]
    },
    {
        description: 'Tipo 3',
        price: 200,
        event: events[1]
    },
    {
        description: 'Tipo 1',
        price: 100,
        event: events[2]
    },
    {
        description: 'Tipo 2',
        price: 100,
        event: events[2]
    },
    {
        description: 'Tipo 3',
        price: 200,
        event: events[2]
    },
])

purchases = Purchase.create([
    {
        user: users[0],
        ticket: tickets[0],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[0],
        ticket: tickets[3],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[0],
        ticket: tickets[6],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[1],
        ticket: tickets[1],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[1],
        ticket: tickets[4],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[1],
        ticket: tickets[7],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[2],
        ticket: tickets[2],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[2],
        ticket: tickets[5],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[2],
        ticket: tickets[8],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[3],
        ticket: tickets[0],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[3],
        ticket: tickets[3],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[3],
        ticket: tickets[6],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[4],
        ticket: tickets[0],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[4],
        ticket: tickets[3],
        time: DateTime.now(),
        paid: true
    },
    {
        user: users[4],
        ticket: tickets[6],
        time: DateTime.now(),
        paid: true
    },
])