# == Schema Information
#
# Table name: part_timers
#
#  id                   :integer          not null, primary key
#  last_name            :string(255)
#  first_name           :string(255)
#  pennkey              :string(255)
#  lui_username         :string(255)
#  havic_userID         :integer
#  alternate_email      :string(255)
#  job_title            :string(255)
#  level                :string(255)
#  fy_hours             :float
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  average_weekly_hours :decimal(, )
#  last_raise           :datetime
#  hire_date            :datetime
#  last_time_sheet      :datetime
#  status               :string(255)
#  language1            :string(255)
#  dialect1             :string(255)
#  language2            :string(255)
#  language3            :string(255)
#  penn_id              :integer
#

require 'faker'

FactoryGirl.define do
  factory :part_timer do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.job_title "TEMP EXTRA PERSON"
    f.level "junior"
  end
end
