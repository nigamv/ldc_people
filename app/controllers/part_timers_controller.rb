class PartTimersController < ApplicationController
  helper_method :sort_column, :sort_direction
  # GET /part_timers
  # GET /part_timers.json
  def index
    @part_timers = PartTimer.order(sort_column + ' ' + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @part_timers }
    end
  end

  
  def update_fy_hours
    @part_timers = PartTimer.all
    @part_timers.each do |pt|
      hours = []
      TimesheetEntry.all.each do |tse|
        if pt.penn_id == tse.penn_id
          hours << tse.hours
        end
      pt.update_attributes(:fy_hours => hours.inject{ |sum, x| sum + x })
      end
    end

    render :index
  end

  # GET /part_timers/1
  # GET /part_timers/1.json
  def show
    @part_timer = PartTimer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part_timer }
    end
  end

  # GET /part_timers/new
  # GET /part_timers/new.json
  def new
    @part_timer = PartTimer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part_timer }
    end
  end

  # GET /part_timers/1/edit
  def edit
    @part_timer = PartTimer.find(params[:id])
  end

  # POST /part_timers
  # POST /part_timers.json
  def create
    @part_timer = PartTimer.new(params[:part_timer])

    respond_to do |format|
      if @part_timer.save
        format.html { redirect_to @part_timer, notice: 'Part timer was successfully created.' }
        format.json { render json: @part_timer, status: :created, location: @part_timer }
      else
        format.html { render action: "new" }
        format.json { render json: @part_timer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /part_timers/1
  # PUT /part_timers/1.json
  def update
    @part_timer = PartTimer.find(params[:id])

    respond_to do |format|
      if @part_timer.update_attributes(params[:part_timer])
        format.html { redirect_to @part_timer, notice: 'Part timer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @part_timer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_timers/1
  # DELETE /part_timers/1.json
  def destroy
    @part_timer = PartTimer.find(params[:id])
    @part_timer.destroy

    respond_to do |format|
      format.html { redirect_to part_timers_url }
      format.json { head :no_content }
    end
  end
  
  private
  def sort_column
    params[:field] || "id"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
