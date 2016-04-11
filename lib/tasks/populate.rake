namespace :populate do
  desc "make dem users, doe"
  task users: :environment do
  	User.populate(100) do |user|
  		user.name = Faker::Name.name
  		user.age = Faker::Number.between(18,90)
  		user.weight = Faker::Number.between(105, 400)
  		user.hair_color = Faker::Color.color_name
  		user.alive = [true, false]
  		user.dob = Faker::Date.between(Date.today - 18.years, Date.today + 62.years)
  	end
  	puts "nigguh, you done made 100 random users"
  end

end
