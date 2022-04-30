FactoryBot.define do
  factory :product do
    name { Faker::Name.initials(number: 2) }
    text { Faker::Lorem.sentence }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
