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

require 'test_helper'

class TimesheetEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
