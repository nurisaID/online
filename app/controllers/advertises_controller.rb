class AdvertisesController < ApplicationController
  # GET /advertises
  # GET /advertises.json
  def index
    @advertises = Advertise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advertises }
    end
  end

  # GET /advertises/1
  # GET /advertises/1.json
  def show
    @advertise = Advertise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advertise }
    end
  end

  # GET /advertises/new
  # GET /advertises/new.json
  def new
    @advertise = Advertise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advertise }
    end
  end

  # GET /advertises/1/edit
  def edit
    @advertise = Advertise.find(params[:id])
  end

  # POST /advertises
  # POST /advertises.json
  def create
    @advertise = Advertise.new(params[:advertise])

    respond_to do |format|
      if @advertise.save
        format.html { redirect_to @advertise, notice: 'Advertise was successfully created.' }
        format.json { render json: @advertise, status: :created, location: @advertise }
      else
        format.html { render action: "new" }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advertises/1
  # PUT /advertises/1.json
  def update
    @advertise = Advertise.find(params[:id])

    respond_to do |format|
      if @advertise.update_attributes(params[:advertise])
        format.html { redirect_to @advertise, notice: 'Advertise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertises/1
  # DELETE /advertises/1.json
  def destroy
    @advertise = Advertise.find(params[:id])
    @advertise.destroy

    respond_to do |format|
      format.html { redirect_to advertises_url }
      format.json { head :no_content }
    end
  end
end
