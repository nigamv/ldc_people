require 'test_helper'

class TimesheetEntriesControllerTest < ActionController::TestCase
  setup do
    @timesheet_entry = timesheet_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheet_entries)
  end

  test "should create timesheet_entry" do
    assert_difference('TimesheetEntry.count') do
      post :create, timesheet_entry: { account_bc: @timesheet_entry.account_bc, account_cnac: @timesheet_entry.account_cnac, account_cref: @timesheet_entry.account_cref, account_formatted: @timesheet_entry.account_formatted, account_fund: @timesheet_entry.account_fund, account_nickname: @timesheet_entry.account_nickname, account_object: @timesheet_entry.account_object, account_org: @timesheet_entry.account_org, account_program: @timesheet_entry.account_program, business_office_approval_time: @timesheet_entry.business_office_approval_time, business_office_approver_name: @timesheet_entry.business_office_approver_name, earnings_type_name: @timesheet_entry.earnings_type_name, employee_approval_time: @timesheet_entry.employee_approval_time, end_time: @timesheet_entry.end_time, entry_category: @timesheet_entry.entry_category, entry_date: @timesheet_entry.entry_date, entry_id: @timesheet_entry.entry_id, fed_to_payroll: @timesheet_entry.fed_to_payroll, hourly_rate: @timesheet_entry.hourly_rate, hours: @timesheet_entry.hours, job_type_name: @timesheet_entry.job_type_name, name: @timesheet_entry.name, pay_period_end: @timesheet_entry.pay_period_end, pay_period_start: @timesheet_entry.pay_period_start, payroll_feed_date: @timesheet_entry.payroll_feed_date, payroll_status: @timesheet_entry.payroll_status, payroll_transaction_type: @timesheet_entry.payroll_transaction_type, penn_id: @timesheet_entry.penn_id, start_time: @timesheet_entry.start_time, supervisor_approval_time: @timesheet_entry.supervisor_approval_time, supervisor_approver_name: @timesheet_entry.supervisor_approver_name, supervisory_group_name: @timesheet_entry.supervisory_group_name }
    end

    assert_redirected_to timesheet_entry_path(assigns(:timesheet_entry))
  end

  test "should show timesheet_entry" do
    get :show, id: @timesheet_entry
    assert_response :success
  end

  test "should update timesheet_entry" do
    put :update, id: @timesheet_entry, timesheet_entry: { account_bc: @timesheet_entry.account_bc, account_cnac: @timesheet_entry.account_cnac, account_cref: @timesheet_entry.account_cref, account_formatted: @timesheet_entry.account_formatted, account_fund: @timesheet_entry.account_fund, account_nickname: @timesheet_entry.account_nickname, account_object: @timesheet_entry.account_object, account_org: @timesheet_entry.account_org, account_program: @timesheet_entry.account_program, business_office_approval_time: @timesheet_entry.business_office_approval_time, business_office_approver_name: @timesheet_entry.business_office_approver_name, earnings_type_name: @timesheet_entry.earnings_type_name, employee_approval_time: @timesheet_entry.employee_approval_time, end_time: @timesheet_entry.end_time, entry_category: @timesheet_entry.entry_category, entry_date: @timesheet_entry.entry_date, entry_id: @timesheet_entry.entry_id, fed_to_payroll: @timesheet_entry.fed_to_payroll, hourly_rate: @timesheet_entry.hourly_rate, hours: @timesheet_entry.hours, job_type_name: @timesheet_entry.job_type_name, name: @timesheet_entry.name, pay_period_end: @timesheet_entry.pay_period_end, pay_period_start: @timesheet_entry.pay_period_start, payroll_feed_date: @timesheet_entry.payroll_feed_date, payroll_status: @timesheet_entry.payroll_status, payroll_transaction_type: @timesheet_entry.payroll_transaction_type, penn_id: @timesheet_entry.penn_id, start_time: @timesheet_entry.start_time, supervisor_approval_time: @timesheet_entry.supervisor_approval_time, supervisor_approver_name: @timesheet_entry.supervisor_approver_name, supervisory_group_name: @timesheet_entry.supervisory_group_name }
    assert_redirected_to timesheet_entry_path(assigns(:timesheet_entry))
  end

  test "should destroy timesheet_entry" do
    assert_difference('TimesheetEntry.count', -1) do
      delete :destroy, id: @timesheet_entry
    end

    assert_redirected_to timesheet_entries_path
  end
end
