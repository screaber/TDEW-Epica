class PichangasController < ApplicationController
  # GET /pichangas
  # GET /pichangas.json
  def index
    @pichangas = Pichanga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pichangas }
    end
  end

  # GET /pichangas/1
  # GET /pichangas/1.json
  def show
    @pichanga = Pichanga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pichanga }
    end
  end

  # GET /pichangas/new
  # GET /pichangas/new.json
  def new
    @pichanga = Pichanga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pichanga }
    end
  end

  # GET /pichangas/1/edit
  def edit
    @pichanga = Pichanga.find(params[:id])
  end

  # POST /pichangas
  # POST /pichangas.json
  def create
    @pichanga = Pichanga.new(params[:pichanga])

    respond_to do |format|
      if @pichanga.save
        format.html { redirect_to @pichanga, :notice => 'Pichanga was successfully created.' }
        format.json { render :json => @pichanga, :status => :created, :location => @pichanga }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pichanga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pichangas/1
  # PUT /pichangas/1.json
  def update
    @pichanga = Pichanga.find(params[:id])

    respond_to do |format|
      if @pichanga.update_attributes(params[:pichanga])
        format.html { redirect_to @pichanga, :notice => 'Pichanga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pichanga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pichangas/1
  # DELETE /pichangas/1.json
  def destroy
    @pichanga = Pichanga.find(params[:id])
    @pichanga.destroy

    respond_to do |format|
      format.html { redirect_to pichangas_url }
      format.json { head :no_content }
    end
  end
end
