class SpoilersController < ApplicationController
  # GET /spoilers
  # GET /spoilers.json
  def index
    @spoilers = Spoiler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spoilers }
    end
  end

  # GET /spoilers/1
  # GET /spoilers/1.json
  def show
    @spoiler = Spoiler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spoiler }
    end
  end

  # GET /spoilers/new
  # GET /spoilers/new.json
  def new
    @spoiler = Spoiler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spoiler }
    end
  end

  # GET /spoilers/1/edit
  def edit
    @spoiler = Spoiler.find(params[:id])
  end

  # POST /spoilers
  # POST /spoilers.json
  def create
    @spoiler = Spoiler.new(params[:spoiler])

    respond_to do |format|
      if @spoiler.save
        format.html { redirect_to @spoiler, notice: 'Spoiler was successfully created.' }
        format.json { render json: @spoiler, status: :created, location: @spoiler }
      else
        format.html { render action: "new" }
        format.json { render json: @spoiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spoilers/1
  # PUT /spoilers/1.json
  def update
    @spoiler = Spoiler.find(params[:id])

    respond_to do |format|
      if @spoiler.update_attributes(params[:spoiler])
        format.html { redirect_to @spoiler, notice: 'Spoiler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spoiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spoilers/1
  # DELETE /spoilers/1.json
  def destroy
    @spoiler = Spoiler.find(params[:id])
    @spoiler.destroy

    respond_to do |format|
      format.html { redirect_to spoilers_url }
      format.json { head :no_content }
    end
  end
end
