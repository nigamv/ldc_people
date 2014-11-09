#Seed the PartTimer DB with fake PTs
fake_pts = [
  {:last_name => 'PartTimer', :first_name => 'Jim', :pennkey => 'jimpart',
    :lui_username => 'jimpart', :havic_userID => 001, :alternate_email => 'jim@gmail.com', :job_title => 'TEMP EXTRA PERSON', :level => 'trainee', :fy_hours => 10.02},
  {:last_name => 'PartTimer', :first_name => 'Jane', :pennkey => 'janepart', 
    :lui_username => 'janepart', :havic_userID => 002, :alternate_email => 'jane@gmail.com', :job_title => 'STUDENT WORKER A', :level => 'junior', :fy_hours => 99.99},
  {:last_name => 'Freeloader', :first_name => 'Lazy', :pennkey => 'freeload', 
    :lui_username => 'freeload@gmail.com', :havic_userID => 003, :alternate_email => 'freeload@gmail.com', :job_title => 'STUDENT WORKER A', :level => 'junior', :fy_hours => 80.99}
]

fake_pts.each do |pt|
  PartTimer.create!(pt)
end