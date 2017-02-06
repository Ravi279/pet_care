# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Loading Vets'

vets = [{:name => 'John', :address => '310 Paxton Way', :city => 'Hartford', :state => 'CT', :zip => '06033', :school => 'Harvard', :experience => 10},
        {:name => 'Bob', :address => '311 Paxton Way', :city => 'Hartford', :state => 'CT', :zip => '06033', :school => 'Princeton', :experience => 12},
        {:name => 'Susan', :address => '312 Paxton Way', :city => 'Hartford', :state => 'CT', :zip => '06033', :school => 'Barkley', :experience => 8}
]

vets.each do |v|
  Vet.create(v)
end

puts 'Loading Customers'

%w(David Joseph Barry).each do |c|
  Customer.create(:name => c)
end

puts 'Loading Users'

users = [{:email => 'receptionist@pets.com', :password => 'reception', :password_confirmation => 'reception', :role => 'receptionist'},
         {:email => 'owner@pets.com', :password => 'owner123', :password_confirmation => 'owner123', :role => 'owner'},
         {:email => 'barry@gmail.com', :password => 'barry123', :password_confirmation => 'barry123', :role => 'customer'},
         {:email => 'bob@gmail.com', :password => 'bob12345', :password_confirmation => 'bob12345', :role => 'vet'}]

users.each do |u|
  User.create(u)
end

puts 'Loading Appointments'

Appointment.create(:vet_id => 1, :customer => 'Brian', :pet => 'Bruno', :visit_on => '3/9/2015 10:00', :reason => 'Sick')
Appointment.create(:vet_id => 2, :customer => 'Nancy', :pet => 'Scooby', :visit_on => '6/9/2015 15:00', :reason => 'Got hurt while running')
Appointment.create(:vet_id => 3, :customer => 'Mike', :pet => 'Tommy', :visit_on => '6/9/2015 14:00', :reason => 'Not Eating')

puts 'Loading Completed'