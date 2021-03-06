# == Schema Information
#
# Table name: timesheet_entries
#
#  id                            :integer          not null, primary key
#  entry_id                      :integer
#  name                          :string(255)
#  penn_id                       :integer
#  entry_date                    :datetime
#  hours                         :float
#  start_time                    :datetime
#  end_time                      :datetime
#  earnings_type_name            :string(255)
#  account_nickname              :string(255)
#  account_formatted             :string(255)
#  entry_category                :string(255)
#  payroll_status                :string(255)
#  supervisory_group_name        :string(255)
#  job_type_name                 :string(255)
#  pay_period_start              :datetime
#  pay_period_end                :datetime
#  employee_approval_time        :datetime
#  supervisor_approver_name      :string(255)
#  supervisor_approval_time      :datetime
#  business_office_approver_name :string(255)
#  business_office_approval_time :datetime
#  account_cnac                  :integer
#  account_org                   :integer
#  account_bc                    :integer
#  account_fund                  :integer
#  account_object                :integer
#  account_program               :integer
#  account_cref                  :integer
#  fed_to_payroll                :integer
#  payroll_feed_date             :datetime
#  payroll_transaction_type      :string(255)
#  hourly_rate                   :float
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  part_timer_id                 :integer
#

class TimesheetEntry < ActiveRecord::Base
  require 'csv'
  belongs_to :part_timer

  attr_accessible :account_bc, :account_cnac, :account_cref, :account_formatted, :account_fund, :account_nickname, :account_object, :account_org, :account_program, :business_office_approval_time, :business_office_approver_name, :earnings_type_name, :employee_approval_time, :end_time, :entry_category, :entry_date, :entry_id, :fed_to_payroll, :hourly_rate, :hours, :job_type_name, :name, :pay_period_end, :pay_period_start, :payroll_feed_date, :payroll_status, :payroll_transaction_type, :penn_id, :start_time, :supervisor_approval_time, :supervisor_approver_name, :supervisory_group_name, :part_timer_id

  def self.create_new_timesheet_entry(hash)
    new_tse = TimesheetEntry.new(hash)
    PartTimer.all.each do |pt|
      if pt.penn_id == new_tse.penn_id
        new_tse.part_timer_id = pt.id
      end
    end
    new_tse.save!
  end

  def self.update_existing_timesheet_entry(existing_tse, hash)
    # part_timer_id isn't updated since it's nil in the csv
    existing_tse.first.update_attributes(hash.except(:part_timer_id))
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      tse_hash = row.to_hash
      existing_tse = TimesheetEntry.where(entry_id: row['entry_id'])
      if existing_tse.count == 1
        update_existing_timesheet_entry(existing_tse, tse_hash)
      else
        create_new_timesheet_entry(tse_hash)
      end
    end 
  end
end
