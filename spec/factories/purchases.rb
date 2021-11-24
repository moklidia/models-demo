FactoryBot.define do
  factory :purchase do
    association(:user)
    date { Faker::Time.between(from: 1.year.ago, to: Time.now) }
    amount { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
  end
end
