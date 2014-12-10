require 'faker'

FactoryGirl.define do
  factory :part_timer do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.job_title "TEMP EXTRA PERSON"
    f.level "junior"
  end
end
