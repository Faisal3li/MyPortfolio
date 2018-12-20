# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

technologies= ["HTML", "CSS", "JavaScript", "Ruby", "jQuery", "Ruby on Rails", "Node.js", "React.js", "JSON", "AJAX", "API"]
technologies.each do |t|
  Technology.create(name: t)
end

User.destroy_all
# Admin Account
User.new({ :email => 'admin@admin.com', :password => 'password', :password_confirmation => 'password', :isAdmin => true}).save