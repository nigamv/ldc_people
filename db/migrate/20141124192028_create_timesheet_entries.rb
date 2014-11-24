class CreateTimesheetEntries < ActiveRecord::Migration
  def change
    create_table :timesheet_entries do |t|
      t.integer :entry_id
      t.string :name
      t.integer :penn_id
      t.datetime :entry_date
      t.float :hours
      t.datetime :start_time
      t.datetime :end_time
      t.string :earnings_type_name
      t.string :account_nickname
      t.string :account_formatted
      t.string :entry_category
      t.string :payroll_status
      t.string :supervisory_group_name
      t.string :job_type_name
      t.datetime :pay_period_start
      t.datetime :pay_period_end
      t.datetime :employee_approval_time
      t.string :supervisor_approver_name
      t.datetime :supervisor_approval_time
      t.string :business_office_approver_name
      t.datetime :business_office_approval_time
      t.integer :account_cnac
      t.integer :account_org
      t.integer :account_bc
      t.integer :account_fund
      t.integer :account_object
      t.integer :account_program
      t.integer :account_cref
      t.integer :fed_to_payroll
      t.datetime :payroll_feed_date
      t.string :payroll_transaction_type
      t.float :hourly_rate

      t.timestamps
    end
  end
end
