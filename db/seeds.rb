puts 'Seeding database with Employees'

User.create!(email: 'abc@example.com',
             password: 'password',
             name: 'John Doe')
User.create!(email: 'def@example.com',
             password: 'password',
             name: 'Bob Nunez')
User.create!(email: 'ghi@example.com',
             password: 'password',
             name: 'Ron Sanchez')
User.create!(email: 'jkl@example.com',
             password: 'password',
             name: 'Sean Simon')
User.create!(email: 'mno@example.com',
             password: 'password',
             name: 'Fred Valentine')

puts 'Finished!'
