#Seed the PartTimer DB with fake PTs
fake_pts = [
  {:last_name => 'PartTimer', :first_name => 'Jim', :pennkey => 'jimpart',
    :lui_username => 'jimpart', :havic_userID => 001, :alternate_email => 'jim@gmail.com', :job_title => 'TEMP EXTRA PERSON', :level => 'trainee'},
  {:last_name => 'PartTimer', :first_name => 'Jane', :pennkey => 'janepart', 
    :lui_username => 'janepart', :havic_userID => 002, :alternate_email => 'jane@gmail.com', :job_title => 'STUDENT WORKER A', :level => 'junior'},
  {:last_name => 'Freeloader', :first_name => 'Lazy', :pennkey => 'freeload', 
    :lui_username => 'freeload@gmail.com', :havic_userID => 003, :alternate_email => 'freeload@gmail.com', :job_title => 'STUDENT WORKER A', :level => 'junior'}
]

fake_timesheets = [
  {:entry_id => 222333, :name => 'PARTTIMER,JIM', :penn_id => 12345678,  :entry_date => "2014-11-24 00:00:00", :hours => 3.5, :start_time => "2014-11-24 13:00:00", :end_time => "2014-11-24 14:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222334, :name => 'PARTTIMER,JANE', :penn_id => 12345876,  :entry_date => "2014-11-24 00:00:00", :hours => 8.5, :start_time => "2014-11-24 13:00:00", :end_time => "2014-11-24 14:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222335, :name => 'PARTTIMER,JANE', :penn_id => 12345876,  :entry_date => "2014-11-24 00:00:00", :hours => 0.5, :start_time => "2014-11-24 14:30:00", :end_time => "2014-11-24 15:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222336, :name => 'PARTTIMER,JANE', :penn_id => 12345876,  :entry_date => "2014-11-24 00:00:00", :hours => 8.5, :start_time => "2014-11-24 16:00:00", :end_time => "2014-11-24 17:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "DEFT TAC KBP", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222337, :name => 'PARTTIMER,JANE', :penn_id => 12345876,  :entry_date => "2014-11-24 00:00:00", :hours => 8.5, :start_time => "2014-11-24 18:00:00", :end_time => "2014-11-24 19:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "DEFT TAC KBP", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222338, :name => 'PARTTIMER,JIM', :penn_id => 12345678,  :entry_date => "2014-11-24 00:00:00", :hours => 1, :start_time => "2014-11-24 15:00:00", :end_time => "2014-11-24 16:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222339, :name => 'PARTTIMER,JIM', :penn_id => 12345678,  :entry_date => "2014-11-24 00:00:00", :hours => 2.5, :start_time => "2014-11-24 17:00:00", :end_time => "2014-11-24 19:30:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "DEFT TAC KBP", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222340, :name => 'PARTTIMER,JIM', :penn_id => 12345678,  :entry_date => "2014-11-24 00:00:00", :hours => 2, :start_time => "2014-11-24 20:00:00", :end_time => "2014-11-24 22:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 11.5},
  {:entry_id => 222341, :name => 'FREELOADER,LAZY', :penn_id => 87654321,  :entry_date => "2014-11-24 00:00:00", :hours => 1, :start_time => "2014-11-24 15:00:00", :end_time => "2014-11-24 16:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 11.5},
  {:entry_id => 222342, :name => 'FREELOADER,LAZY', :penn_id => 87654321,  :entry_date => "2014-11-24 00:00:00", :hours => 2.5, :start_time => "2014-11-24 17:00:00", :end_time => "2014-11-24 19:30:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "DEFT TAC KBP", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 12.5},
  {:entry_id => 222343, :name => 'FREELOADER,LAZY', :penn_id => 87654321,  :entry_date => "2014-11-24 00:00:00", :hours => 2, :start_time => "2014-11-24 20:00:00", :end_time => "2014-11-24 22:00:00", :earnings_type_name => "Regular Hourly Pay",   :account_nickname => "BOLT Phase 2 Word Alignment", :pay_period_start => "2014-11-24 00:00:00", :pay_period_end => "2014-11-30 00:00:00", :hourly_rate => 11.5}
]

fake_pts.each do |pt|
  PartTimer.create!(pt)
end

fake_timesheets.each do |ts|
  TimesheetEntry.create!(ts)
end
