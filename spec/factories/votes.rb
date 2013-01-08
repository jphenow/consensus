def random(array, number=1)
  array.shuffle[0..(number - 1)].first
end

FactoryGirl.define do
  factory :vote do
    value random [-1, 0, 1]
  end
end
