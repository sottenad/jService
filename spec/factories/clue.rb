FactoryGirl.define do
  factory :clue do
    answer "John"
    question "Last name Doe first name"
    value 400
    airdate Chronic.parse('1985-04-10 17:00:00')
    category
  end
end
