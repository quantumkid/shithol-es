class ShitholesController < ApplicationController
  # GET /shitholes
  # GET /shitholes.json
  def index
    @shitholes = Shithole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shitholes }
    end
  end

  # GET /shitholes/1
  # GET /shitholes/1.json
  def show
    @shithole = Shithole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shithole }
    end
  end

  # GET /shitholes/new
  # GET /shitholes/new.json
  def new
    @shithole = Shithole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shithole }
    end
  end

  # GET /shitholes/1/edit
  def edit
    @shithole = Shithole.find(params[:id])
  end

  # POST /shitholes
  # POST /shitholes.json
  def create
    @shithole = Shithole.new(params[:shithole])

    respond_to do |format|
      if @shithole.save
        format.html { redirect_to @shithole, notice: 'Shithole was successfully created.' }
        format.json { render json: @shithole, status: :created, location: @shithole }
      else
        format.html { render action: "new" }
        format.json { render json: @shithole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shitholes/1
  # PUT /shitholes/1.json
  def update
    @shithole = Shithole.find(params[:id])

    respond_to do |format|
      if @shithole.update_attributes(params[:shithole])
        format.html { redirect_to @shithole, notice: 'Shithole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shithole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shitholes/1
  # DELETE /shitholes/1.json
  def destroy
    @shithole = Shithole.find(params[:id])
    @shithole.destroy

    respond_to do |format|
      format.html { redirect_to shitholes_url }
      format.json { head :no_content }
    end
  end
end
