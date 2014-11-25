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
#

class PartTimer < ActiveRecord::Base
  has_many :timesheet_entries

  attr_accessible :alternate_email, :first_name, :fy_hours, :havic_userID, 
                  :job_title, :last_name, :level, :lui_username, :pennkey, 
                  :status, :language1, :dialect1, :language2, :language3,
                  :last_raise, :hire_date

  validates :first_name, :last_name, :presence => true
  validates :job_title, :inclusion => {:in => ['STUDENT WORKER A', 'TEMP EXTRA PERSON']}
  validates :level, :inclusion => {:in => ['trainee', 'junior', 'senior']}
end
