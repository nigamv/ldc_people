# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141124220937) do

  create_table "part_timers", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "pennkey"
    t.string   "lui_username"
    t.integer  "havic_userID"
    t.string   "alternate_email"
    t.string   "job_title"
    t.string   "level"
    t.float    "fy_hours"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.decimal  "average_weekly_hours"
    t.datetime "last_raise"
    t.datetime "hire_date"
    t.datetime "last_time_sheet"
    t.string   "status"
    t.string   "language1"
    t.string   "dialect1"
    t.string   "language2"
    t.string   "language3"
  end

  create_table "timesheet_entries", :force => true do |t|
    t.integer  "entry_id"
    t.string   "name"
    t.integer  "penn_id"
    t.datetime "entry_date"
    t.float    "hours"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "earnings_type_name"
    t.string   "account_nickname"
    t.string   "account_formatted"
    t.string   "entry_category"
    t.string   "payroll_status"
    t.string   "supervisory_group_name"
    t.string   "job_type_name"
    t.datetime "pay_period_start"
    t.datetime "pay_period_end"
    t.datetime "employee_approval_time"
    t.string   "supervisor_approver_name"
    t.datetime "supervisor_approval_time"
    t.string   "business_office_approver_name"
    t.datetime "business_office_approval_time"
    t.integer  "account_cnac"
    t.integer  "account_org"
    t.integer  "account_bc"
    t.integer  "account_fund"
    t.integer  "account_object"
    t.integer  "account_program"
    t.integer  "account_cref"
    t.integer  "fed_to_payroll"
    t.datetime "payroll_feed_date"
    t.string   "payroll_transaction_type"
    t.float    "hourly_rate"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "part_timer_id"
  end

end
