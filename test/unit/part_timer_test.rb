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

require 'test_helper'

class PartTimerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
