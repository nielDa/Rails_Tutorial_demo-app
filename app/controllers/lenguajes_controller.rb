class LenguajesController < ApplicationController
  # GET /lenguajes
  # GET /lenguajes.json
  def index
    @lenguajes = Lenguaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lenguajes }
    end
  end

  # GET /lenguajes/1
  # GET /lenguajes/1.json
  def show
    @lenguaje = Lenguaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lenguaje }
    end
  end

  # GET /lenguajes/new
  # GET /lenguajes/new.json
  def new
    @lenguaje = Lenguaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lenguaje }
    end
  end

  # GET /lenguajes/1/edit
  def edit
    @lenguaje = Lenguaje.find(params[:id])
  end

  # POST /lenguajes
  # POST /lenguajes.json
  def create
    @lenguaje = Lenguaje.new(params[:lenguaje])

    respond_to do |format|
      if @lenguaje.save
        format.html { redirect_to @lenguaje, notice: 'Lenguaje was successfully created.' }
        format.json { render json: @lenguaje, status: :created, location: @lenguaje }
      else
        format.html { render action: "new" }
        format.json { render json: @lenguaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lenguajes/1
  # PUT /lenguajes/1.json
  def update
    @lenguaje = Lenguaje.find(params[:id])

    respond_to do |format|
      if @lenguaje.update_attributes(params[:lenguaje])
        format.html { redirect_to @lenguaje, notice: 'Lenguaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lenguaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenguajes/1
  # DELETE /lenguajes/1.json
  def destroy
    @lenguaje = Lenguaje.find(params[:id])
    @lenguaje.destroy

    respond_to do |format|
      format.html { redirect_to lenguajes_url }
      format.json { head :no_content }
    end
  end
end
