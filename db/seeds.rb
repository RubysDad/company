puts "Seeding database with Employees"

User.create!(email: 'abc@example.com', password: 'password', first_name: 'John', last_name: 'Doe')
User.create!(email: 'def@example.com', password: 'password', first_name: 'Bob', last_name: 'Doey')
User.create!(email: 'ghi@example.com', password: 'password', first_name: 'Ron', last_name: 'Sanchez')
User.create!(email: 'jkl@example.com', password: 'password', first_name: 'Sean', last_name: 'Simon')
User.create!(email: 'mno@example.com', password: 'password', first_name: 'Fred', last_name: 'Valentine')

puts "Finished!"
