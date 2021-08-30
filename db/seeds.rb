puts "Creating gyms..."
Gym.create(name: "Globo Gym", rating: 1, price: 1000)
Gym.create(name: "Pewter City Gym", rating: 3, price: 50)
Gym.create(name: "Plant Fitness", rating: 4, price: 20)
Gym.create(name: "Crunch", rating: 5, price: 20)

puts "Creating members..."
Member.create(name: "Fred")
Member.create(name: "Daphne")
Member.create(name: "Velma")
Member.create(name: "Shaggy")
Member.create(name: "Scooby")

puts "Creating memberships..."

# ************************************************************************
# * TODO: create memberships! Remember, a membership belongs to a member *
# * and a membership belongs to a gym.                                   *
# ************************************************************************
# Create memberships Here

Membership.create(member_id: 1, gym_id: 1, start_year: 2021, start_month: "January")
Membership.create(member_id: 2, gym_id: 1, start_year: 2021, start_month: "February")
Membership.create(member_id: 3, gym_id: 2, start_year: 2021, start_month: "March")
Membership.create(member_id: 4, gym_id: 3, start_year: 2021, start_month: "April")
Membership.create(member_id: 5, gym_id: 3, start_year: 2021, start_month: "May")
Membership.create(member_id: 1, gym_id: 4, start_year: 2021, start_month: "June")
Membership.create(member_id: 3, gym_id: 4, start_year: 2021, start_month: "July")
Membership.create(member_id: 5, gym_id: 1, start_year: 2021, start_month: "August")

puts "Seeding done!"
