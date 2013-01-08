FactoryGirl.define do
  factory :document do
    abstract Faker::Lorem.paragraph(1)
    summary Faker::Lorem.paragraph(3)
  end
end
