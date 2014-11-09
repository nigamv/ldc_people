class CreatePartTimers < ActiveRecord::Migration
  def change
    create_table :part_timers do |t|
      t.string :last_name
      t.string :first_name
      t.string :pennkey
      t.string :lui_username
      t.integer :havic_userID
      t.string :alternate_email
      t.string :job_title
      t.string :level
      t.float :fy_hours

      t.timestamps
    end
  end
end
