class AddPartTimerIdToTimesheetEntry < ActiveRecord::Migration
  def change
    add_column :timesheet_entries, :part_timer_id, :integer
  end
end
