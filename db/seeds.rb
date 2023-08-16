# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

r1 = Restaurant.create(name: 'Red Chillies1', description: 'Available south indian food',
    address: 'tirupati', email: 'red1@gmail.com', number: '9014861210', founder_name: 'sharukhan1')
r2 = Restaurant.create(name: 'Red Chillies2', description: 'Available east indian food',
    address: 'tirupati', email: 'red2@gmail.com', number: '9014861211', founder_name: 'sharukhan2')
Restaurant.create(name: 'Red Chillies3', description: 'Available west indian food',
    address: 'tirupati', email: 'red3@gmail.com', number: '9014861212', founder_name: 'sharukhan3')
Restaurant.create(name: 'Red Chillies4', description: 'Available north indian food',
    address: 'tirupati', email: 'red4@gmail.com', number: '9014861213', founder_name: 'sharukhan4')
                     
Food.destroy_all

r1.foods.create(name: 'idly', price: '100', status: 'AVAILABLE')
r1.foods.create(name: 'dosa', price: '100', status: 'AVAILABLE')
r2.foods.create(name: 'icecream', price: '100', status: 'AVAILABLE')
r2.foods.create(name: 'puri', price: '100', status: 'AVAILABLE')
r2.foods.create(name: 'chapathi', price: '100', status: 'AVAILABLE')

User.destroy_all

admin = User.create(email: 'admin@gmail.com', password: 'admin123', user_role: 'admin')
customer = User.create(email: 'customer@gmail.com', password: 'customer123', user_role: 'customer')
stranger = User.create(email: 'stranger@gmail.com', password: 'stranger123', user_role: 'stranger')
