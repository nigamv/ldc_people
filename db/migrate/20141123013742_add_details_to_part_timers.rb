class AddDetailsToPartTimers < ActiveRecord::Migration
  def change
    add_column :part_timers, :average_weekly_hours, :decimal
    add_column :part_timers, :last_raise, :datetime
    add_column :part_timers, :hire_date, :datetime
    add_column :part_timers, :last_time_sheet, :datetime
    add_column :part_timers, :status, :string
    add_column :part_timers, :language1, :string
    add_column :part_timers, :dialect1, :string
    add_column :part_timers, :language2, :string
    add_column :part_timers, :language3, :string
  end
end
