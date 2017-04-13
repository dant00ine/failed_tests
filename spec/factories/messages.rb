FactoryGirl.define do
  factory :message do
    content "We are writing a message that is long enough"
    user
  end
end
