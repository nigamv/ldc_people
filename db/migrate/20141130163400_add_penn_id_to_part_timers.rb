class AddPennIdToPartTimers < ActiveRecord::Migration
  def change
    add_column :part_timers, :penn_id, :integer
  end
end
