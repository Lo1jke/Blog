class SaySomethingsController < ApplicationController
  # GET /say_somethings
  # GET /say_somethings.xml
  def index
    @say_somethings = SaySomething.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @say_somethings }
    end
  end

  # GET /say_somethings/1
  # GET /say_somethings/1.xml
  def show
    @say_something = SaySomething.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @say_something }
    end
  end

  # GET /say_somethings/new
  # GET /say_somethings/new.xml
  def new
    @say_something = SaySomething.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @say_something }
    end
  end

  # GET /say_somethings/1/edit
  def edit
    @say_something = SaySomething.find(params[:id])
  end

  # POST /say_somethings
  # POST /say_somethings.xml
  def create
    @say_something = SaySomething.new(params[:say_something])

    respond_to do |format|
      if @say_something.save
        format.html { redirect_to(@say_something, :notice => 'Say something was successfully created.') }
        format.xml  { render :xml => @say_something, :status => :created, :location => @say_something }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @say_something.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /say_somethings/1
  # PUT /say_somethings/1.xml
  def update
    @say_something = SaySomething.find(params[:id])

    respond_to do |format|
      if @say_something.update_attributes(params[:say_something])
        format.html { redirect_to(@say_something, :notice => 'Say something was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @say_something.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /say_somethings/1
  # DELETE /say_somethings/1.xml
  def destroy
    @say_something = SaySomething.find(params[:id])
    @say_something.destroy

    respond_to do |format|
      format.html { redirect_to(say_somethings_url) }
      format.xml  { head :ok }
    end
  end
end
