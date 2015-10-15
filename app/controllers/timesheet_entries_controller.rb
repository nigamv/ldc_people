class TimesheetEntriesController < ApplicationController
  
  
  # GET /timesheet_entries
  # GET /timesheet_entries.json
  def index
    @timesheet_entries = TimesheetEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timesheet_entries }
    end
  end

  def format

  end

  def import
    TimesheetEntriesController.import(params[:file])
    redirect_to :action => :index, notice: "Timesheet entries imported."
  end

  # GET /timesheet_entries/1
  # GET /timesheet_entries/1.json
  def show
    @timesheet_entry = TimesheetEntry.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timesheet_entry }
    end
  end

  # GET /timesheet_entries/new
  # GET /timesheet_entries/new.json
  def new
  end

  # GET /timesheet_entries/1/edit
  def edit
    @timesheet_entry = TimesheetEntry.find(params[:id])
  end

  # POST /timesheet_entries
  # POST /timesheet_entries.json
  def create
    @timesheet_entry = TimesheetEntry.new(params[:timesheet_entry])

    respond_to do |format|
      if @timesheet_entry.save
        format.html { redirect_to @timesheet_entry, notice: 'Timesheet entry was successfully created.' }
        format.json { render json: @timesheet_entry, status: :created, location: @timesheet_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @timesheet_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timesheet_entries/1
  # PUT /timesheet_entries/1.json
  def update
    @timesheet_entry = TimesheetEntry.find(params[:id])

    respond_to do |format|
      if @timesheet_entry.update_attributes(params[:timesheet_entry])
        format.html { redirect_to @timesheet_entry, notice: 'Timesheet entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timesheet_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheet_entries/1
  # DELETE /timesheet_entries/1.json
  def destroy
    @timesheet_entry = TimesheetEntry.find(params[:id])
    @timesheet_entry.destroy

    respond_to do |format|
      format.html { redirect_to timesheet_entries_url }
      format.json { head :no_content }
    end
  end

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
