FactoryBot.define do
	factory :rental do
		title { Faker::Lorem.word }
		owner { Faker::Lorem.word }
		city { Faker::Lorem.word }
		category { Faker::Lorem.word }
		bedrooms { rand(1.0...7.5) }
		image { Faker::Lorem.word }
		description { Faker::Lorem.word }
	end
end