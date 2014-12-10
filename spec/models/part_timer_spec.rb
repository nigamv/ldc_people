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

require 'spec_helper'

describe PartTimer do

  it "has a valid factory" do
    expect(FactoryGirl.create(:part_timer)).to be_valid
  end

  it "is invalid without a job_title" do
    expect(FactoryGirl.build(:part_timer, job_title: nil)).to_not be_valid
  end

  it "is invalid without a level" do
    expect(FactoryGirl.build(:part_timer, level: nil)).to_not be_valid
  end
end
