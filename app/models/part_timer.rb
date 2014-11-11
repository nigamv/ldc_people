class PartTimer < ActiveRecord::Base
  attr_accessible :alternate_email, :first_name, :fy_hours, :havic_userID, :job_title, :last_name, :level, :lui_username, :pennkey

  validates :first_name, :last_name, :presence => true
  validates :job_title, :inclusion => {:in => ['STUDENT WORKER A', 'TEMP EXTRA PERSON']}
end
