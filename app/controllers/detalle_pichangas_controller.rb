class DetallePichangasController < ApplicationController
  # GET /detalle_pichangas
  # GET /detalle_pichangas.json
  def index
    @detalle_pichangas = DetallePichanga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @detalle_pichangas }
    end
  end

  # GET /detalle_pichangas/1
  # GET /detalle_pichangas/1.json
  def show
    @detalle_pichanga = DetallePichanga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @detalle_pichanga }
    end
  end

  # GET /detalle_pichangas/new
  # GET /detalle_pichangas/new.json
  def new
    @detalle_pichanga = DetallePichanga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @detalle_pichanga }
    end
  end

  # GET /detalle_pichangas/1/edit
  def edit
    @detalle_pichanga = DetallePichanga.find(params[:id])
  end

  # POST /detalle_pichangas
  # POST /detalle_pichangas.json
  def create
    @detalle_pichanga = DetallePichanga.new(params[:detalle_pichanga])

    respond_to do |format|
      if @detalle_pichanga.save
        format.html { redirect_to @detalle_pichanga, :notice => 'Detalle pichanga was successfully created.' }
        format.json { render :json => @detalle_pichanga, :status => :created, :location => @detalle_pichanga }
      else
        format.html { render :action => "new" }
        format.json { render :json => @detalle_pichanga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /detalle_pichangas/1
  # PUT /detalle_pichangas/1.json
  def update
    @detalle_pichanga = DetallePichanga.find(params[:id])

    respond_to do |format|
      if @detalle_pichanga.update_attributes(params[:detalle_pichanga])
        format.html { redirect_to @detalle_pichanga, :notice => 'Detalle pichanga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @detalle_pichanga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_pichangas/1
  # DELETE /detalle_pichangas/1.json
  def destroy
    @detalle_pichanga = DetallePichanga.find(params[:id])
    @detalle_pichanga.destroy

    respond_to do |format|
      format.html { redirect_to detalle_pichangas_url }
      format.json { head :no_content }
    end
  end
end
