class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @employee = Employee.find(params[:employee_id])
  end

  # GET /events/1
  # GET /events/1.json
  def show
     @employee = Employee.find(params[:employee_id])
     @event = Event.find( params[:id] )
  end

  # GET /events/new
  def new
    @event = Event.new
     @employee = Employee.find(params[:employee_id])
  end

  # GET /events/1/edit
  def edit
    @event = Event.find( params[:id] )
    @employee = Employee.find(params[:employee_id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @employee = Employee.find(params[:employee_id])

    respond_to do |format|
      if @event.save
        @event.employee_id = params[:employee_id]
        format.html { redirect_to employee_events_path(params[:employee_id]), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: employee_events_path(params[:employee_id]) }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to employee_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def invite
     @event = Event.find( params[:event_id])
     @employees = Employee.where emp_type: 'Leaver'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:eventname, :eventdate, :eventstarttime, :eventendtime, :description, :address, :additionalinfo, :invite)
    end
end
