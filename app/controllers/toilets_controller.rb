class ToiletsController < ApplicationController
  # GET /toilets
  # GET /toilets.json
  def index
    @toilets = Toilet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toilets }
    end
  end

  # GET /toilets/1
  # GET /toilets/1.json
  def show
    @toilet = Toilet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toilet }
    end
  end

  # GET /toilets/new
  # GET /toilets/new.json
  def new
    @toilet = Toilet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toilet }
    end
  end

  # GET /toilets/1/edit
  def edit
    @toilet = Toilet.find(params[:id])
  end

  # POST /toilets
  # POST /toilets.json
  def create
    @toilet = Toilet.new(params[:toilet])

    respond_to do |format|
      if @toilet.save
        format.html { redirect_to @toilet, notice: 'Toilet was successfully created.' }
        format.json { render json: @toilet, status: :created, location: @toilet }
      else
        format.html { render action: "new" }
        format.json { render json: @toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toilets/1
  # PUT /toilets/1.json
  def update
    @toilet = Toilet.find(params[:id])

    respond_to do |format|
      if @toilet.update_attributes(params[:toilet])
        format.html { redirect_to @toilet, notice: 'Toilet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toilets/1
  # DELETE /toilets/1.json
  def destroy
    @toilet = Toilet.find(params[:id])
    @toilet.destroy

    respond_to do |format|
      format.html { redirect_to toilets_url }
      format.json { head :no_content }
    end
  end
end
